#!/usr/bin/env python3
"""
Aplica o patch de persistência (tools/persist/persist.bin) no firmware do Draxen DN202 (fw 9.24).

  1. injeta o blob em 0x8300 (exige que a área esteja zerada no original)
  2. 0x585C: "e4 78 5a f6" (clr a; mov r0,#0x5a; mov @r0,a)  -> "12 <boot_load> 00"
  3. 0x741F: "12 38 b6" (lcall handler_teclas)                -> "12 <hook_keys>"
  4. 0x6D05: "12 4e 01" (lcall handler_usb)                   -> "12 <hook_usb>"
  5. invariantes: 61440 B, 0xEFF8-0xEFFF zerados, setor 0xD000-0xD1FF zerado, nada fora do esperado mudou

Uso: patch_persist.py stock_firmware.bin out.bin [--dry-run]
Os endereços dos hooks são lidos de tools/persist/persist.lst (símbolos hook_keys/hook_usb/boot_load).
"""
import sys, re, os

HERE = os.path.dirname(os.path.abspath(__file__))
BLOB = os.path.join(HERE, 'persist', 'persist.bin')
LST  = os.path.join(HERE, 'persist', 'persist.lst')
BASE = 0x8300
FW_SIZE = 61440

SITES = [  # (endereço, bytes originais, função p/ gerar bytes novos)
    (0x585C, bytes.fromhex('e4785af6'), lambda s: bytes([0x12, s['boot_load'] >> 8, s['boot_load'] & 0xFF, 0x00])),
    (0x741F, bytes.fromhex('1238b6'),   lambda s: bytes([0x12, s['hook_keys'] >> 8, s['hook_keys'] & 0xFF])),
    (0x6D05, bytes.fromhex('124e01'),   lambda s: bytes([0x12, s['hook_usb'] >> 8, s['hook_usb'] & 0xFF])),
]

def symbols():
    syms = {}
    for ln in open(LST, errors='replace'):
        m = re.match(r'\s+([0-9A-F]{6})\s.*?\b(hook_keys|hook_usb|boot_load|check_save|init_m1|init_m6|init_m8|m8tab):', ln)
        if m: syms[m.group(2)] = int(m.group(1), 16)
    return syms

def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]; dry = '--dry-run' in sys.argv
    src = args[0]; dst = args[1] if len(args) > 1 else None
    orig = open(src, 'rb').read(); fw = bytearray(orig)
    if len(fw) != FW_SIZE: sys.exit(f"tamanho {len(fw)} != {FW_SIZE}")
    blob = open(BLOB, 'rb').read(); syms = symbols()
    for k in ('hook_keys', 'hook_usb', 'boot_load'):
        if k not in syms: sys.exit(f"símbolo {k} não achado em {LST}")
    print(f"blob {len(blob)} B em 0x{BASE:04X}-0x{BASE+len(blob)-1:04X}; símbolos: " + ", ".join(f"{k}=0x{v:04X}" for k, v in sorted(syms.items(), key=lambda kv: kv[1])))
    if any(fw[BASE:BASE+len(blob)]): sys.exit("área do blob não está zerada no original")
    if any(fw[0xD000:0xD200]): sys.exit("setor 0xD000 não está zerado no original")
    if any(fw[0xEFF8:0xF000]): sys.exit("0xEFF8-0xEFFF não zerado")
    for addr, old, mk in SITES:
        if bytes(fw[addr:addr+len(old)]) != old: sys.exit(f"bytes em 0x{addr:04X} = {fw[addr:addr+len(old)].hex(' ')}, esperado {old.hex(' ')}")
        new = mk(syms); assert len(new) == len(old)
        print(f"  0x{addr:04X}: {old.hex(' ')} -> {new.hex(' ')}")
        fw[addr:addr+len(old)] = new
    fw[BASE:BASE+len(blob)] = blob
    changed = [i for i in range(FW_SIZE) if fw[i] != orig[i]]
    outside = [i for i in changed if not (BASE <= i < BASE+len(blob)) and not any(a <= i < a+len(o) for a, o, _ in SITES)]
    assert not outside, [hex(i) for i in outside]
    print(f"bytes alterados: {len(changed)} (blob {sum(1 for i in changed if i >= BASE)}, hooks {sum(1 for i in changed if i < BASE)})")
    if dry or not dst: print("(dry-run)"); return
    open(dst, 'wb').write(fw); print("escrito", dst)

if __name__ == '__main__': main()
