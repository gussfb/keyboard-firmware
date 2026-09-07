# Teclado 258A:0090 — o que já se sabe (2026-09-07)

## Identidade

| Item | Valor |
|---|---|
| USB VID:PID | `258A:0090` |
| Strings USB | `SINO WEALTH` / `Mechanical Keyboard` (genérico) |
| bcdDevice | `0x0924` |
| MCU | Sino Wealth **SH68F90 / SH68F90A** (8051, 64 KB flash) — mesma família dos irmãos abaixo |
| Irmãos com o mesmo VID:PID | Genesis Thor 300 RGB (`sinowisp -d genesis-thor-300-rgb`), Digital Alliance Meca Warrior X (`-d digitalalliance-meca-warrior-x`) — ambos com read/write testados na sinowisp |
| Bootloader ISP esperado | md5 `2d169670eae0d36eae8188562c1f66e8`, 4096 bytes, enumera como `0603:1020` |

## Interfaces HID (dump do descriptor)

| Iface | Col | usage_page/usage | Report | Tamanho | Uso |
|---|---|---|---|---|---|
| 0 | – | 0x0001/0x0006 | sem ID | 8 B in | teclado boot protocol |
| 1 | 1 | 0x0001/0x0006 | 0x01 in | 14 B | teclado NKRO |
| 1 | 2 | 0x000C/0x0001 | 0x02 in | 2 B | consumer control (mídia) |
| 1 | 3 | 0xFF00/0x0001 | **0x05 feature** | 5 B | **canal ISP** da Sino Wealth (`05 75 ..` = pula pro bootloader) |
| 1 | 4 | 0xFF00/0x0002 | **0x0A feature** | 7 B | **comandos de iluminação** (protocolo OpenRGB Thor 300) |
| 1 | 5 | 0xFF00/0x0003 | 0x0B feature | 7 B | ? (mesmo formato) |
| 1 | 6 | 0xFF00/0x0004 | 0x0C feature | 7 B | ? (mesmo formato) |
| 1 | 7 | 0xFF00/0x0005 | 0x0D input | 7 B | ? (teclado → host) |

GET_REPORT nos features 0x05/0x0A/0x0B/0x0C retorna erro (device STALL) mesmo depois de um SET. Só escrita.

## Protocolo de iluminação (report 0x0A) — fonte: OpenRGB `SinowealthKeyboard90Controller`

Pacote de 8 bytes: `[0x0A, cmd, a1, a2, a3, a4, a5, 0]`

| cmd | args | efeito |
|---|---|---|
| `0x03` | `0x01` | "prepara" — OpenRGB manda antes de todo SendMode |
| `0x0A` | `mode, brightness, speed, color` | define modo |
| `0x0C` | `0x01, key, r, g, b` | cor de uma tecla (modo custom 0x13); `key=0x89` = commit |

- brightness `0..4` (0 = apagado), speed `0..4`
- color `0..7`: red green blue yellow violet cyan white rainbow
- modes: 00 prismo, 01 breathing, 02 wave1, 03 blossom, 04 rainbow, 05 wave2, 06 cw, 07 wave3, 08 reactive, 09 ccw, 0A snake, 0B wave4, 0C tornado, 0D neon, 0E twinkle, 0F reactive-single, **10 static**, 11 raindrops, 12 wave5, 13 custom
- "Off" do OpenRGB = `0A 03 01` + `0A 0A 10 00 xx 07` (static, brilho 0)

Script: `python.exe tools/rgb_mode.py off --send` (teclado está no Windows; roda com o Python do Windows, hidapi 0.15).

## ISP / flash (fonte: sinowisp + SMK)

- Entrar em ISP: feature report `0x05` na iface 1 com `[0x05, 0x75, 0, 0, 0, 0]`. Firmware faz `mov B,#0xA5; mov A,#0x5A; ljmp 0xFF00`.
- Bootloader (0xF000–0xFFFF) usa report 0x05 (cmd: 0x55 enable-fw, 0x52 init-read, 0x57 init-write, 0x45 erase, 0x5A reboot) e report 0x06 (xfer: 0x72 read page, 0x77 write page). Página 2048 B.
- Firmware = 0x0000–0xEFFF (61440 B). O bootloader só pula pro firmware se houver `LJMP (0x02)` em `0xEFFB`; bytes `0x0001-0x0002` (reset vector) são espelhados em `0xEFFC-0xEFFD`.
- SSP (self-programming, o jeito do firmware salvar config): SFRs `IB_CON1=0xF2..IB_CON5=0xF6`, `IB_OFFSET=0xFB`, `IB_DATA=0xFC`, `XPAGE=0xF7`. Chave `05 0A 09 06` em IB_CON2..5; op `0x6E` programa byte, `0xE6` apaga setor (512 B). SMK guarda config em `0xEC00` (setor 118).
  - Pista pra achar onde o firmware de fábrica guarda (ou não) o modo de luz: procurar no dump a sequência `75 F3 05 75 F4 0A 75 F5 09 75 F6 06` (mov direct,#imm nos IB_CON).

## Ferramentas

- `tools/sinowisp/sinowisp.exe` v2.1.0 (roda do WSL via interop; enxerga HID do Windows).
- `tools/dump.sh` — dump full/firmware/bootloader em `dumps/<data>/`.
- `tools/flash.sh` — grava firmware com checagens (tamanho, LJMP em 0xEFFB, backup existente).
- `tools/hid_enum.py` — lista interfaces/descriptors. `tools/rgb_mode.py` — manda modo de luz.
- Análise: Ghidra 12.1.3 (tem processador 8051) + `openjdk-21-jdk` via apt, se precisar disassemblar.
- Firmware alternativo: [SMK](https://github.com/carlossless/smk) (sdcc ≥ 4.3 + meson), já tem efeitos RGB e settings persistentes; precisaria portar a matriz/LEDs deste teclado.

---

# Análise do firmware irmão (Meca Warrior X, 258A:0090, bcdDevice 0x0521) — 2026-09-07

Fonte: dump publicado em https://gist.github.com/cloudenum/ea52843a3ae6dbf4963f0853deb410eb (em `dumps/sibling-meca-warrior-x/`).
Bootloader md5 = `2d169670…` (idêntico ao esperado). O nosso é bcdDevice 0x0924 (build mais novo da mesma linha); endereços vão mudar, a estrutura deve ser a mesma.

## Mapa (endereços do irmão)

| Onde | O quê |
|---|---|
| 0x0000 | `LJMP 0xC0E1` (reset) |
| 0x5D82 / 0x5DAB | strings USB "Mechanical Keyboard" / "SINO WEALTH" (UTF-16) |
| 0x5EEF | device descriptor `12 01 00 02 … 8A 25 90 00 21 05` |
| **0xE400** | **bloco de config salvo**: `AA 0E 02 00 00 04 03 …` = magic, modo, brilho, ?, ?, velocidade, cor |
| 0xBC1E | `load_settings`: mode←flash[E401]→IRAM 0x69; bright←[E402]→IRAM 0x1B; speed←[E405]→IRAM 0x1E; **cor := 7 (rainbow) fixo**; lcall 0x9DEB |
| 0x7FF2 | se bit 0x2B setado: cor←flash[E406]→IRAM 0x5C, reaplica modo (>=0x13 → custom via 0xA0BF) |
| 0xBDC0 | `flash_program_byte(XPAGE=R7, IB_OFFSET=R5, IB_DATA=R3)` — SSP 0x6E + chave 05 0A 09 06. **62 chamadores** (0x1A49…, 0x3C51…, …) |
| 0xBEBF | `flash_erase_sector(XPAGE=R7)` — SSP 0xE6. 15 chamadores (0x1A20, 0x3C2B, 0x3D1B, 0x3E21, 0x4520…) |
| 0xC1AB | `isp_jump`: `clr EA; mov B,#A5; mov A,#5A; ljmp FF00` |
| 0x2E47… | despachante de efeitos por modo (IRAM 0x69): 0x0D→0x2ED4, 0x0A→0xAA15, 0x02→0xA92D, 0x05→0xC044, 0x00→0x85B9, 0x08→0x8D4D, 0x10… |
| 0x99C6 | handler SET_REPORT: buffer em XDATA 0x0910 (report id), 0x0911 (cmd), 0x0912 (arg). `rid 03 01` → XDATA 0x0935 = rid ("arma" o report pro próximo comando). Vale pra rid 05, 0A, 0B, 0C |

## Variáveis (IRAM)

| IRAM | Significado |
|---|---|
| 0x69 | modo de iluminação atual (0x00–0x13) |
| 0x1B | brilho |
| 0x1E | velocidade |
| 0x5C | cor (0–7) |
| 0x62 | passado como R7 pros efeitos (fase/frame?) |
| bit 0x2B | "recarregar cor da flash e reaplicar modo" |

## Conclusão parcial

O firmware de fábrica **persiste** modo/brilho/velocidade/cor na flash (setor 0xE400) e recarrega no boot.
Logo o "volta pra piscação" deve ser um caso específico: ou o caminho de Fn não salva, ou "apagado" é um flag só em RAM,
ou brilho 0 não é aceito no boot. Decompilação (Ghidra) do irmão vai mostrar; confirmação final só com o dump do nosso (v9.24).

## Decompilação (Ghidra) do irmão — o que o firmware faz de verdade

Arquivos: `analysis/sibling-meca-warrior-x/{decomp.c,listing.asm,functions.txt}` (gerados por `tools/ghidra/analyze.sh`).

### Variáveis (corrigido)

| Onde | Significado |
|---|---|
| IRAM 0x69 | modo (0x00–0x13; 0x20–0x24 = modos custom/perfil) |
| IRAM 0x1E (`BANK3_R6`) | **brilho** 0–4 (0 = apagado → `FUN_ac41` chama `FUN_bbdd` que zera o driver de LED) |
| IRAM 0x1B (`BANK3_R3`) | **velocidade** 0–4 (intervalo de frames; teclas Fn não mexem em modo static/custom) |
| IRAM 0x5C | cor 0–7 (7 = rainbow) |
| bit 0x2B (`_5_3`) | **"em boot"**: enquanto 1, `FUN_2dbd` não renderiza o modo salvo e sim a **animação de boot** (`FUN_7f0a`) |
| bit 0x13 (`_2_3`) | "config suja": `FUN_2dbd` vê, limpa, reaplica modo/cor e chama `FUN_baca` (save) |
| XDATA 0x0935 | report "armado" pelo `rid 03 01` |
| XDATA 0x1100.. | buffer do SET_REPORT: `[rid, cmd, b2, b3, b4, b5]` |

### Bloco salvo em flash (setor 0xE400), gravado por `FUN_baca`

`E400=AA  E401=modo  E402=velocidade  E403,E404=?  E405=brilho  E406=cor`

### Comando USB `0A 0A mode b3 b4 b5` (`FUN_3b56`, ramo `cmd==0x0A`)

- `modo ← b2`; `brilho ← b3` (0..4 direto, **0 = apagado**); `velocidade ← 4-b4` (invertido internamente); `cor ← b5`
- chama `FUN_ac41` (aplica brilho), seta `_2_3` → save adiado no próximo tick. **Persiste.**
- Conclusão: `python.exe tools/rgb_mode.py off --send` (= `0A 03 01` + `0A 0A 10 00 02 07`) é mesmo "static, apagado" e fica salvo. Já foi enviado em 2026-09-07.

### Teclas Fn (irmão) — todas salvam

| Fn + (linha,coluna) | ação |
|---|---|
| (1,0x10) | modo++ (wrap em 0x13→0), `_2_3=1` (save adiado) |
| (4,0x11) / (5,0x11) | brilho ±1 (0..4), **save imediato** + `FUN_ac41` |
| (5,0x10) / (5,0x12) | velocidade ±1 (não em static/custom), save imediato |
| (2,0x10) | cor++ (0..7) |
| (1,2..6) | modo 0x20..0x24 (perfis custom), save adiado |
| (0,0x10),(0,0x11),(2,3) | toggles só em RAM (`_2_1`, `_5_6`, `_2_6`) — provavelmente Win-lock etc. |

### Boot (sequência real)

```
RESET → 0xC0E1 (zera IRAM/XDATA) → main 0x44C2:
  SETB 0x2B (_5_3=1, "em boot")            @0x44CF
  FUN_c189: FUN_bbdd; FUN_bc1e(load: modo/vel/brilho da flash, cor:=7); FUN_ac41(aplica brilho)
  loop principal → tick FUN_2dbd:
     _5_3==1 → FUN_7f0a (ANIMAÇÃO DE BOOT: fases 0988=0→1(x3)→2, ~0x1E ticks na fase 2)
     ao terminar (0x7FF6): CLR 0x2B; cor ← flash[E406]; FUN_9deb(cor); aplica modo (FUN_9d55 / FUN_a0bf)
     _5_3==0 → renderiza o modo salvo normalmente
```

**Logo: todo power-on toca a animação antes de restaurar o que está salvo.** Isso é a "piscação ao ligar" se ela for transitória.
Se o teclado *ficar* animando (não restaurar), é outra coisa (firmware v9.24 diferente) — só o dump do nosso responde.

### Plano de patch (endereços do irmão; refazer no nosso dump)

Objetivo A — pular a animação de boot mantendo a aplicação da config salva:
- `0x2F82: LCALL 0x7F0A` → `LCALL <trampolim>`
- trampolim (em espaço livre): `90 08 F5 EF F0` (XDATA 08F5 ← R7) · `30 2B 03` (jnb _5_3,+3) · `02 7F F6` (ljmp bloco final: limpa _5_3, carrega cor, aplica modo) · `02 7F 0F` (ljmp p/ dentro de FUN_7f0a após a 1ª instrução)
- Efeito: no boot, o primeiro tick já "termina" a animação e aplica o modo salvo. Fora do boot, FUN_7f0a segue normal (é usado também como efeito).

Objetivo B (opcional) — ligar sempre apagado, ignorando o salvo:
- em `FUN_bc1e`: `90 E4 05 E4 93 78 1E F6` (brilho ← flash[E405]) → `78 1E 76 00 00 00 00 00` (brilho := 0 + NOPs)

Invariantes ao gravar: manter `02` (LJMP) em `0xEFFB`; não tocar em 0xF000+ (bootloader); `tools/flash.sh` já checa.

---

# Draxen DN202 (nosso teclado, fw 9.24) — análise do dump real (2026-09-07)

Dump: `dumps/20260907-101722/stock_full.bin` (md5 `cd7adeea…`, bootloader `2d169670…` ✓). Análise: `analysis/draxen-dn202/`.
**Não há persistência de iluminação**: modo/cor/brilho/velocidade vivem só em IRAM e o boot cai nos defaults.
Não existe animação de boot como no irmão; o "wave rgb" é simplesmente o modo 0.

## Variáveis (IRAM)

| IRAM | Significado | Default no boot | Fn (linha,col) |
|---|---|---|---|
| 0x76 | modo: 0..10 efeitos, 0x10..0x13 "game", 0x14 gravando custom | 0 (wave rgb) | (0,0x11) cicla 0..10; (2,0x10) cicla 0x10..0x13 |
| 0x5A | cor 0..6 | 0 | (5,0x0D) |
| 0x7A | brilho 0..4 | 4 | (4,0x11)+ / (5,0x11)− |
| 0x77 | velocidade 0..4 (intervalo = 6−v) | 1 | (?,0x11)+ / (5,0x10)− (não em 4, 0x10–0x13) |

- Init em `FUN_7bf7` (0x7BF7, chamada só do main em 0x584A); cor zerada no main em 0x585C (`e4 78 5a f6`).
- Trocar de modo via Fn zera os buffers de LED (0x0000/0x0095/0x012A, 0x8A entradas) e inicializa tabelas em IRAM para os modos 1, 6 e 8.
- Brilho: 4 → `ff95=0`; 3/2/1 → `ff95=8, ffb5=0x80/0xB4/0xE6`; 0 → `FUN_79d2` (driver off).
- Flash em runtime: `flash_program(R7=pág,R5=off,R3=dado)`=0x7ECA, `flash_erase(R7=pág)`=0x7F93. Setores usados pelo firmware: 0xAC–0xAE, 0xB0 (cor custom RGB = 3 bytes em 0xB000, via USB report 0x0B), 0xBA–0xC1, 0xC8–0xCA. Defaults em código: 0xB2xx–0xB9xx, 0xDCxx–0xDExx.
- Handlers: teclas/Fn `FUN_38b6` (chamada única em 0x741F), USB `FUN_4e01` (chamada única em 0x6D05; `cmd 0x0A` → 0x76 = byte 3).
- Código termina em 0x8291; 0x8292–0xAFFF livre; 0xCC00–0xDBFF livre e nunca apagado pelo firmware.

## Patch de persistência (v1) — `tools/persist/persist.asm` + `tools/patch_persist.py`

- Blob em 0x8300–0x853D (574 B). Registro em flash **0xD000**: `A5 modo cor brilho vel chk`, chk = soma+0x5A.
- Hooks: 0x585C → `lcall boot_load` (carrega e valida o registro, aplica, inicializa tabelas/brilho, sombra em XDATA 0x08F0–0x08F4);
  0x741F → `hook_keys` e 0x6D05 → `hook_usb` (chamam o handler original e depois `check_save`: se (modo,cor,brilho,vel) ≠ sombra e modo < 0x14 → erase 0xD0 + 6 programs).
- Saída: `build/dn202_persist_v1.bin` (md5 `19e96b4d…`). Gravar com `tools/flash.sh build/dn202_persist_v1.bin`.
- Depois de qualquer reboot pela sinowisp o teclado **não volta sozinho**: desplugar e plugar.

**Resultado (2026-09-07):** v1 gravada no DN202 e confirmada pelo Gus: modo/cor/brilho/velocidade sobrevivem ao desliga/liga.
