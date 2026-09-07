#!/usr/bin/env python3
"""Intel HEX -> bin (preenche buracos com 0xFF). Uso: ihex2bin.py in.hex out.bin [tamanho]"""
import sys
def parse(path):
    mem, base = {}, 0
    for ln in open(path):
        ln = ln.strip()
        if not ln.startswith(':'): continue
        b = bytes.fromhex(ln[1:])
        n, addr, typ, data, cks = b[0], (b[1] << 8) | b[2], b[3], b[4:-1], b[-1]
        if (sum(b) & 0xFF) != 0: raise SystemExit(f"checksum ruim: {ln}")
        if typ == 0:
            for i, v in enumerate(data): mem[base + addr + i] = v
        elif typ == 1: break
        elif typ == 2: base = ((data[0] << 8) | data[1]) << 4
        elif typ == 4: base = ((data[0] << 8) | data[1]) << 16
    return mem
def main():
    src, dst = sys.argv[1], sys.argv[2]
    mem = parse(src)
    size = int(sys.argv[3], 0) if len(sys.argv) > 3 else (max(mem) + 1 if mem else 0)
    out = bytearray([0xFF]) * size
    for a, v in mem.items():
        if a < size: out[a] = v
    open(dst, 'wb').write(out)
    print(f"{src}: {len(mem)} bytes de dados, min=0x{min(mem):04X} max=0x{max(mem):04X} -> {dst} ({size} bytes)")
if __name__ == '__main__': main()
