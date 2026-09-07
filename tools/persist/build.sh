#!/usr/bin/env bash
# Monta persist.asm -> persist.bin (blob absoluto começando em 0x8300) + persist.lst
set -euo pipefail
cd "$(dirname "$0")"
rm -f persist.rel persist.lst persist.sym persist.ihx persist.map persist.bin
sdas8051 -plosgff persist.rel persist.asm
sdld -i -m persist.ihx persist.rel
python3 ../ihex2bin.py persist.ihx persist_full.bin 0x10000 >/dev/null
python3 - <<'PY'
b = open('persist_full.bin','rb').read()
start = 0x8300
end = max(i for i in range(len(b)) if b[i] != 0xFF) + 1
open('persist.bin','wb').write(b[start:end])
print(f"blob: 0x{start:04X}-0x{end-1:04X} ({end-start} bytes)")
PY
rm -f persist_full.bin
echo "--- símbolos ---"; grep -E '^\s+[0-9A-F]{4}\s+\S+' persist.lst | head -0; awk '/hook_keys|hook_usb|boot_load|check_save|init_m1|init_m6|init_m8|m8tab/ && /^ *[0-9A-F]{6}/ {print}' persist.lst | head; grep -nE '(hook_keys|hook_usb|boot_load|check_save|init_m[168]|m8tab):' persist.lst | head -10
