#!/usr/bin/env python3
"""
Envia comandos de iluminação pro teclado Sino Wealth 258A:0090 usando o mesmo
protocolo que o OpenRGB usa pro Genesis Thor 300 (mesmo VID:PID, mesmos reports).

Protocolo (feature report 0x0A, 8 bytes incl. report ID, interface 1, usage_page 0xFF00 usage 0x0002):
    [0x0A, cmd, a1, a2, a3, a4, a5]
    cmd 0x03, a1=0x01                      -> "prepara" (OpenRGB manda antes de todo SendMode)
    cmd 0x0A, mode, brightness, speed, color -> define modo/brilho/velocidade/cor
    cmd 0x0C, 0x01, key, r, g, b            -> cor de uma tecla (modo custom 0x13)
    cmd 0x0C, 0x01, 0x89                    -> commit do custom

Rode no Python DO WINDOWS (python.exe) porque o teclado está ligado no Windows:
    python.exe tools/rgb_mode.py off            # só mostra o que faria (dry-run)
    python.exe tools/rgb_mode.py off --send     # envia de verdade
    python.exe tools/rgb_mode.py static --brightness 2 --color white --send
    python.exe tools/rgb_mode.py rainbow --send  # volta pra rainbow (pra desfazer)
"""
import argparse, sys, time

VID, PID = 0x258A, 0x0090
REPORT_ID = 0x0A

MODES = {
    "prismo": 0x00, "breathing": 0x01, "wave1": 0x02, "blossom": 0x03, "rainbow": 0x04,
    "wave2": 0x05, "cw": 0x06, "wave3": 0x07, "reactive": 0x08, "ccw": 0x09, "snake": 0x0A,
    "wave4": 0x0B, "tornado": 0x0C, "neon": 0x0D, "twinkle": 0x0E, "reactive1": 0x0F,
    "static": 0x10, "raindrops": 0x11, "wave5": 0x12, "custom": 0x13,
}
COLORS = {"red":0,"green":1,"blue":2,"yellow":3,"violet":4,"cyan":5,"white":6,"rainbow":7}

def find_path():
    import hid
    for d in hid.enumerate(VID, PID):
        if d["usage_page"] == 0xFF00 and d["usage"] == 0x0002 and d["interface_number"] == 1:
            return d["path"]
    return None

def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("mode", choices=list(MODES) + ["off"], help="'off' = static + brilho 0")
    ap.add_argument("--brightness", type=int, default=4, help="0..4 (0=desligado)")
    ap.add_argument("--speed", type=int, default=2, help="0..4")
    ap.add_argument("--color", choices=list(COLORS), default="rainbow")
    ap.add_argument("--send", action="store_true", help="realmente envia (sem isso é dry-run)")
    a = ap.parse_args()

    if a.mode == "off":
        mode, bright = MODES["static"], 0
    else:
        mode, bright = MODES[a.mode], a.brightness

    pkts = [
        [REPORT_ID, 0x03, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00],
        [REPORT_ID, 0x0A, mode, bright, a.speed, COLORS[a.color], 0x00, 0x00],
    ]
    for p in pkts:
        print(("SEND " if a.send else "DRY  ") + " ".join(f"{b:02X}" for b in p))
    if not a.send:
        print("(dry-run; use --send pra enviar)")
        return 0

    import hid
    path = find_path()
    if not path:
        print("teclado 258A:0090 (iface 1, usage 0xFF00/0x0002) não encontrado", file=sys.stderr)
        return 1
    h = hid.device(); h.open_path(path)
    try:
        for p in pkts:
            n = h.send_feature_report(bytes(p))
            print(f"  -> {n} bytes")
            time.sleep(0.05)
    finally:
        h.close()
    return 0

if __name__ == "__main__":
    sys.exit(main())
