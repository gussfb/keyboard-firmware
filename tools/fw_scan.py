#!/usr/bin/env python3
"""Varredura estática de um firmware SH68F90 (bin de 61440 B): strings USB, VID/PID, SSP (grava flash?), handlers HID.
Uso: fw_scan.py firmware.bin"""
import sys, re
fw = open(sys.argv[1], 'rb').read()
print(f"tamanho: {len(fw)} bytes")

def hits(pat, label, ctx=8):
    idx = [m.start() for m in re.finditer(re.escape(pat), fw)]
    print(f"\n[{label}] {len(idx)} ocorrência(s): " + ", ".join(f"0x{i:04X}" for i in idx[:40]))
    for i in idx[:12]:
        lo, hi = max(0, i-ctx), min(len(fw), i+len(pat)+ctx)
        print(f"  0x{i:04X}: " + fw[lo:hi].hex(' '))
    return idx

# --- strings USB (UTF-16LE nos string descriptors) e ASCII
for s in ("SINO WEALTH", "Mechanical Keyboard", "Gaming KB", "SINOWEALTH"):
    u = s.encode('utf-16-le'); a = s.encode()
    iu = [m.start() for m in re.finditer(re.escape(u), fw)]
    ia = [m.start() for m in re.finditer(re.escape(a), fw)]
    print(f"[str] {s!r}: utf16 em {[hex(i) for i in iu]} ascii em {[hex(i) for i in ia]}")

# --- device descriptor: 12 01 xx xx 00 00 00 40 8A 25 90 00 bcdDev
i = fw.find(bytes.fromhex('8A2590 00'.replace(' ', '')))
print(f"\n[VID:PID 258A:0090 little-endian] em {hex(i) if i>=0 else 'não achado'}")
if i >= 0:
    j = fw.rfind(b'\x12\x01', 0, i)
    if j >= 0 and i - j < 12:
        d = fw[j:j+18]
        print(f"  device descriptor @0x{j:04X}: {d.hex(' ')}  bcdUSB={d[3]:02x}{d[2]:02x} bcdDevice={d[13]:02x}{d[12]:02x}")
# procurar também outros PIDs 258A no binário
for m in re.finditer(b'\x8a\x25', fw):
    k = m.start(); print(f"  258A @0x{k:04X}: PID={fw[k+3]:02X}{fw[k+2]:02X}")

# --- SSP / self-programming: chave nos IB_CON2..5 (F3..F6) = 05 0A 09 06
hits(bytes.fromhex('75F30575F40A75F50975F606'), 'SSP key seq  mov IB_CON2..5,#05,#0A,#09,#06')
hits(bytes.fromhex('75F26E'), 'mov IB_CON1,#0x6E (SSP PROGRAM byte)')
hits(bytes.fromhex('75F2E6'), 'mov IB_CON1,#0xE6 (SSP ERASE sector)')
hits(bytes.fromhex('75F3'), 'mov IB_CON2,#imm (qualquer)', ctx=4)
xp = [m.start() for m in re.finditer(b'\x75\xf7', fw)]
print(f"\n[mov XPAGE,#imm] {len(xp)} ocorrências; valores: " + ", ".join(f"0x{fw[i+2]:02X}" for i in xp[:40]))
for m in re.finditer(b'\x75\xfb', fw):
    pass
n_off = len(list(re.finditer(b'\x75\xfb', fw))); n_dat = len(list(re.finditer(b'\x75\xfc', fw)))
print(f"[mov IB_OFFSET,#imm] {n_off}   [mov IB_DATA,#imm] {n_dat}")
# acesso indireto: mov IB_CON1,A = F5 F2 ; mov IB_DATA,A = F5 FC ; mov IB_OFFSET,A = F5 FB ; mov XPAGE,A = F5 F7
for sfr, name in ((0xF2,'IB_CON1'),(0xF3,'IB_CON2'),(0xF4,'IB_CON3'),(0xF5,'IB_CON4'),(0xF6,'IB_CON5'),(0xFB,'IB_OFFSET'),(0xFC,'IB_DATA'),(0xF7,'XPAGE')):
    n1 = len(list(re.finditer(bytes([0xF5, sfr]), fw)))
    n2 = len(list(re.finditer(bytes([0x75, sfr]), fw)))
    n3 = len(list(re.finditer(bytes([0xE5, sfr]), fw)))
    print(f"  {name:9s} mov {name},A: {n1:3d}   mov {name},#imm: {n2:3d}   mov A,{name}: {n3:3d}")

# --- ISP jump: mov B,#A5 (75 F0 A5), mov A,#5A (74 5A), ljmp FF00 (02 FF 00)
hits(bytes.fromhex('02FF00'), 'LJMP 0xFF00 (pulo pro bootloader ISP)')
hits(bytes.fromhex('75F0A5'), 'mov B,#0xA5 (assinatura ISP)')
hits(bytes.fromhex('B475'), 'cjne A,#0x75 (checa cmd ISP no report 5)', ctx=6)
# --- handlers de report ID: cjne A,#0x0A / #0x0B / #0x0C / #0x05
for rid in (0x05, 0x0A, 0x0B, 0x0C, 0x0D):
    hits(bytes([0xB4, rid]), f'cjne A,#0x{rid:02X}', ctx=6)
# --- MOVC tables: quantidade de 'mov DPTR,#' (90 hi lo) apontando >= 0xE000 (tabelas/const no fim)
dp = [(m.start(), (fw[m.start()+1]<<8)|fw[m.start()+2]) for m in re.finditer(b'\x90', fw)]
hi = [a for _, a in dp if 0xE000 <= a < 0xF000]
print(f"\n[mov DPTR,#addr>=0xE000] {len(hi)} refs; alvos únicos: " + ", ".join(sorted({f'0x{a:04X}' for a in hi})[:40]))

# --- bloco de config salvo (setor 0xE400) e cabeçalho
cfg = fw[0xE400:0xE410]
print(f"\n[config @0xE400] {cfg.hex(' ')}  -> magic={cfg[0]:02X} mode={cfg[1]:02X} bright={cfg[2]:02X} ?={cfg[3]:02X} ?={cfg[4]:02X} speed={cfg[5]:02X} color={cfg[6]:02X}")
# --- load_settings: mov DPTR,#0xE401; clr A; movc; mov R0,#imm; mov @R0,A  => 90 E4 01 E4 93 78 xx F6
m = re.search(b'\x90\xe4\x01\xe4\x93\x78(.)\xf6\xa3\xe4\x93\x78(.)\xf6', fw)
if m: print(f"[load_settings] @0x{m.start():04X}: mode->IRAM 0x{m.group(1)[0]:02X}, bright->IRAM 0x{m.group(2)[0]:02X}")
else: print("[load_settings] padrão não achado (procure 90 E4 01 E4 93)")
# --- despachante SET_REPORT: 90 09 10 E0 B4 05 (mov DPTR,#buf; movx; cjne A,#5)
for m in re.finditer(b'\x90(..)\xe0\xb4\x05.\xa3\xe0\xb4\x03', fw):
    print(f"[set_report handler] @0x{m.start():04X}: buffer XDATA 0x{m.group(1).hex()}")
