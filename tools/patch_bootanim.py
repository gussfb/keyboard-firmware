#!/usr/bin/env python3
"""
Patch "pular animação de boot" pra firmware Sino Wealth 258A:0090 (SH68F90).
Localiza tudo por ASSINATURA de bytes (não por endereço fixo), pra servir em versões diferentes.

O que faz (ver notes/protocolo.md):
  1. acha FUN_boot_anim: função que começa com  90 08 F5 EF F0 79 57 E7 D3 78 1B 96 50 03 02
  2. acha o único LCALL pra ela (12 hi lo)
  3. acha o bloco final da animação:  30 2B rr C2 2B 90 E4 06 E4 93 78 5C F6   -> END = endereço do C2 2B
  4. escolhe espaço livre (>= 32 bytes de 0x00) entre 0xC200 e 0xDFFF pro trampolim
  5. trampolim:  90 08 F5 EF F0   ; XDATA[08F5] = R7 (igual à 1ª instrução original)
                 30 2B 03         ; se NÃO está em boot, pula 3
                 02 <END>         ; em boot: vai direto pro fim (limpa flag, carrega cor, aplica modo)
                 02 <FUN+5>       ; senão: continua a função original após a 1ª instrução
  6. troca o LCALL original por LCALL <trampolim>
  7. checa invariantes: tamanho 61440, 0xEFF8-0xEFFF zerados (área do bootloader), nada fora do firmware.

Uso: patch_bootanim.py firmware_in.bin firmware_out.bin  [--dry-run]
"""
import sys, re

SIG_FUN  = bytes.fromhex('9008f5eff07957e7d3781b965003 02'.replace(' ', ''))
SIG_END  = re.compile(rb'\x30\x2b.\xc2\x2b\x90\xe4\x06\xe4\x93\x78\x5c\xf6', re.S)
FW_SIZE  = 61440

def find_all(buf, pat):
    return [m.start() for m in re.finditer(re.escape(pat), buf)]

def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    dry = '--dry-run' in sys.argv
    src, dst = args[0], (args[1] if len(args) > 1 else None)
    fw = bytearray(open(src, 'rb').read())
    if len(fw) != FW_SIZE:
        sys.exit(f"tamanho {len(fw)} != {FW_SIZE} (use a seção 'firmware', sem bootloader)")

    ends = [m.start() + 3 for m in SIG_END.finditer(fw)]   # +3 = pula o JNB de 3 bytes -> aponta pro CLR 0x2B
    if len(ends) != 1: sys.exit(f"bloco final achado {len(ends)}x: {[hex(x) for x in ends]}")
    end = ends[0]
    funs = [f for f in find_all(fw, SIG_FUN) if f < end < f + 0x200]   # a função certa é a que contém o bloco final
    if len(funs) != 1: sys.exit(f"FUN_boot_anim contendo 0x{end:04X}: {len(funs)} candidatas {[hex(x) for x in find_all(fw, SIG_FUN)]}")
    fun = funs[0]
    calls = [i for i in range(len(fw)-2) if fw[i] == 0x12 and fw[i+1] == (fun >> 8) and fw[i+2] == (fun & 0xFF)]
    if len(calls) != 1: sys.exit(f"LCALL pra 0x{fun:04X} achado {len(calls)}x: {[hex(x) for x in calls]}")
    call = calls[0]

    # espaço livre: 32 zeros alinhados, entre 0xC200 e 0xDFFF
    m = re.search(rb'\x00{32}', fw[0xC200:0xE000])
    if not m: sys.exit("sem espaço livre em 0xC200-0xDFFF")
    tramp = 0xC200 + m.start() + 8   # deixa 8 zeros de folga antes
    resume = fun + 5
    code = bytes([0x90, 0x08, 0xF5, 0xEF, 0xF0,
                  0x30, 0x2B, 0x03,
                  0x02, end >> 8, end & 0xFF,
                  0x02, resume >> 8, resume & 0xFF])

    print(f"FUN_boot_anim   = 0x{fun:04X}   (resume em 0x{resume:04X})")
    print(f"LCALL original  = 0x{call:04X}   -> LCALL 0x{tramp:04X}")
    print(f"bloco final     = 0x{end:04X}   (CLR 0x2B; cor<-E406; aplica modo)")
    print(f"trampolim       = 0x{tramp:04X}   {code.hex(' ')}")
    if dry or not dst:
        print("(dry-run: nada escrito)"); return

    assert all(b == 0 for b in fw[tramp:tramp+len(code)])
    fw[tramp:tramp+len(code)] = code
    fw[call+1], fw[call+2] = tramp >> 8, tramp & 0xFF
    if any(fw[0xEFF8:0xF000]):
        sys.exit("0xEFF8-0xEFFF não está zerado — área reservada do bootloader; NÃO gravar isso.")
    open(dst, 'wb').write(fw)
    diff = [i for i in range(FW_SIZE) if fw[i] != open(src,'rb').read()[i]]
    print(f"escrito {dst}; bytes alterados: {len(diff)} em {[hex(i) for i in diff[:6]]}{'…' if len(diff)>6 else ''}")

if __name__ == '__main__':
    main()
