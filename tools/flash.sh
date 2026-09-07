#!/usr/bin/env bash
# Grava um firmware (61440 bytes, seção firmware) no teclado via ISP. NÃO mexe no bootloader.
#   tools/flash.sh caminho/para/firmware.hex|.bin
# Checagens antes de gravar:
#   - arquivo existe e (se .bin) tem exatamente 61440 bytes
#   - .bin: 0xEFF8-0xEFFF zerados (área reservada do bootloader; a sinowisp preenche LJMP/reset vector na gravação)
#   - exige que exista pelo menos um dump em dumps/ (backup)
set -euo pipefail
cd "$(dirname "$0")/.."
EXE="tools/sinowisp/sinowisp.exe"
DEV="${DEVICE:-genesis-thor-300-rgb}"
FW="${1:?uso: tools/flash.sh firmware.hex|firmware.bin}"
[ -f "$FW" ] || { echo "não achei $FW"; exit 1; }
ls dumps/*/stock_full.* >/dev/null 2>&1 || { echo "sem backup em dumps/. Rode tools/dump.sh primeiro."; exit 1; }
case "$FW" in
  *.bin)
    sz=$(stat -c %s "$FW"); [ "$sz" -eq 61440 ] || { echo "tamanho $sz != 61440"; exit 1; }
    # 0xEFF8-0xEFFF é área do bootloader (LJMP + espelho do reset vector); dumps via ISP mostram zeros ali. Não pode ter código nosso.
    tail=$(xxd -s 0xEFF8 -l 8 -p "$FW"); [ "$tail" = "0000000000000000" ] || { echo "0xEFF8-0xEFFF = $tail, esperado tudo zero. Abortando."; exit 1; }
    fmt=bin ;;
  *.hex) fmt=ihex ;;
  *) echo "extensão desconhecida"; exit 1 ;;
esac
echo ">>> vai gravar $FW ($fmt, md5 $(md5sum "$FW" | cut -c1-32)) no perfil $DEV. Ctrl+C em 5 s pra abortar."; sleep 5
"$EXE" write -d "$DEV" -r 20 --format "$fmt" "$(wslpath -w "$FW")"
echo ">>> gravação terminou. O teclado NÃO volta sozinho depois do reboot da sinowisp: desplugue e plugue de novo."
