#!/usr/bin/env bash
# Dump da flash do teclado (258A:0090, SH68F90) via bootloader ISP usando a sinowisp NO WINDOWS.
# Faz 2 leituras "full" (firmware+bootloader, 65536 B) e compara; deriva firmware.bin/bootloader.bin.
# O teclado some ~20 s por leitura (vira 0603:1020) e volta sozinho.
#   tools/dump.sh            -> dumps/<data>/stock_full.bin, stock_firmware.bin, stock_bootloader.bin, md5sums.txt
set -euo pipefail
cd "$(dirname "$0")/.."
EXE="tools/sinowisp/sinowisp.exe"
[ -x "$EXE" ] || { echo "faltou $EXE (rode tools/sinowisp/get.sh)"; exit 1; }
DEV="${DEVICE:-genesis-thor-300-rgb}"
OUT="dumps/$(date +%Y%m%d-%H%M%S)"
mkdir -p "$OUT"
W() { wslpath -w "$1"; }

echo ">>> teclado visível?"
"$EXE" list --vendor_id 0x258a --product_id 0x0090 | head -2

for n in 1 2; do
  echo ">>> leitura full #$n"
  "$EXE" read -d "$DEV" -s full --format bin "$(W "$OUT/read$n.bin")"
  ls -la "$OUT/read$n.bin"
  sleep 3
done
if cmp -s "$OUT/read1.bin" "$OUT/read2.bin"; then
  echo ">>> as duas leituras são idênticas"
  mv "$OUT/read1.bin" "$OUT/stock_full.bin"; rm -f "$OUT/read2.bin"
else
  echo "!!! leituras DIFERENTES — mantendo as duas, verifique"; cmp -l "$OUT/read1.bin" "$OUT/read2.bin" | head; exit 2
fi
python3 - "$OUT" <<'PY'
import sys, os
o = sys.argv[1]; fw = open(f"{o}/stock_full.bin","rb").read()
assert len(fw) == 65536, len(fw)
open(f"{o}/stock_firmware.bin","wb").write(fw[:61440])
open(f"{o}/stock_bootloader.bin","wb").write(fw[61440:])
print("firmware 61440 B, bootloader 4096 B; 0xEFF8..0xEFFF =", fw[0xEFF8:0xF000].hex(' '))
PY
( cd "$OUT" && md5sum *.bin | tee md5sums.txt )
echo ">>> bootloader esperado (SH68F90/A): 2d169670eae0d36eae8188562c1f66e8"
echo ">>> pronto: $OUT"
