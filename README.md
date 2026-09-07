# keyboard-firmware — Draxen DN202 com iluminação persistente

Teclado: **Draxen DN202** (USB `258A:0090`, "SINO WEALTH / Mechanical Keyboard", chip **SH68F90** 8051, firmware 9.24).

Problema: toda vez que ligava, voltava pro efeito "wave RGB". O firmware de fábrica **não salva** modo, cor, brilho
nem velocidade: tudo vive em RAM e o boot zera. Este repo contém o dump, a engenharia reversa e um **patch de
persistência** escrito em assembly 8051 que grava essas 4 variáveis na flash a cada mudança e restaura no boot.

Estado: **v1 gravada e funcionando** (2026-09-07). Firmware ativo no teclado = `build/dn202_persist_v1.bin`.

## Como usar

Tudo roda pelo WSL, mas o teclado fica no Windows: os scripts chamam `sinowisp.exe` e `python.exe` via interop.

```sh
tools/sinowisp/get.sh                                   # baixa a sinowisp (precisa de gh autenticado)
tools/dump.sh                                           # dump da flash via bootloader ISP -> dumps/<data>/
tools/flash.sh build/dn202_persist_v1.bin               # grava o patch
tools/flash.sh dumps/20260907-101722/stock_firmware.bin # volta ao original
```

Depois de qualquer `read`/`write` da sinowisp o teclado **some do USB até desplugar e plugar** (quirk do bootloader, não é brick).

Pra regenerar o patch a partir do dump original:

```sh
sudo apt install sdcc          # assembler sdas8051
tools/persist/build.sh         # persist.asm -> persist.bin + persist.lst
tools/patch_persist.py dumps/20260907-101722/stock_firmware.bin build/dn202_persist_v1.bin
```

## Como o patch funciona

| Onde | O quê |
|---|---|
| IRAM `0x76 / 0x5A / 0x7A / 0x77` | modo / cor / brilho / velocidade (variáveis do firmware original) |
| `0x585C` (main) | `lcall boot_load`: lê o registro em `0xD000`, valida magic + checksum + faixas, aplica, inicializa as tabelas dos modos 1/6/8 e o registrador de brilho |
| `0x741F` / `0x6D05` | `lcall` do handler de teclas/Fn e do handler USB redirecionados pra hooks que chamam o original e depois `check_save` |
| `check_save` | compara as 4 variáveis com uma cópia-sombra em XDATA `0x08F0`; se mudou, apaga o setor `0xD000` e grava `A5 modo cor brilho vel chk` usando as próprias rotinas de flash do firmware (`0x7F93` erase, `0x7ECA` program) |
| `0x8300–0x853D` | o blob (574 B) em área livre do firmware |

555 bytes alterados no total; nenhum código original foi movido. Fonte: [tools/persist/persist.asm](tools/persist/persist.asm).

## Layout do repo

- [notes/protocolo.md](notes/protocolo.md) — toda a engenharia reversa: interfaces HID, protocolo de luz (OpenRGB), ISP/bootloader, mapa do firmware irmão (Meca Warrior X) e do DN202, variáveis, hooks.
- `dumps/20260907-101722/` — dump original do DN202 (full/firmware/bootloader + md5). `dumps/sibling-meca-warrior-x/` — dump público de um irmão 258A:0090 usado pra aprender a estrutura.
- `analysis/*/` — exportações do Ghidra (`listing.asm`, `decomp.c`, `functions.txt`) do irmão, do DN202 e do DN202 patchado.
- `tools/` — scripts: `hid_enum.py`, `rgb_mode.py` (manda modo de luz via USB), `dump.sh`, `flash.sh`, `ihex2bin.py`, `fw_scan.py` (varredura estática), `patch_bootanim.py` (patch de animação de boot, só serve pro irmão), `patch_persist.py`, `ghidra/analyze.sh` (Ghidra headless 8051 com entry points de tabelas de salto), `persist/` (asm + build).
- `build/` — firmware patchado e log da gravação.

## Segurança

- Sempre ter um dump (`dumps/*/stock_full.bin`) antes de gravar. `flash.sh` recusa gravar sem backup.
- `0xEFF8–0xEFFF` é área do bootloader (LJMP + espelho do reset vector); dumps por ISP mostram zeros ali e a sinowisp preenche na gravação. `flash.sh` e o patcher checam.
- Se brickar: o bootloader ISP continua na flash; recuperação com Arduino Nano + [sinodude](https://github.com/carlossless/sinodude), ou SinoLink.

## Créditos

[sinowisp](https://github.com/carlossless/sinowisp) e [SMK](https://github.com/carlossless/smk) (carlossless), análise do ISP por gashtaan,
controller do Genesis Thor 300 no [OpenRGB](https://openrgb.org), dump do Meca Warrior X por cloudenum.
