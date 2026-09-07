#!/usr/bin/env bash
# Baixa os binários da sinowisp (carlossless/sinowisp) pra esta pasta. Requer `gh` autenticado.
set -euo pipefail
VER="${1:-v2.1.0}"
cd "$(dirname "$0")"
tmp=$(mktemp -d)
gh release download "$VER" -R carlossless/sinowisp -D "$tmp" \
  -p "sinowisp-x86_64-pc-windows-msvc-$VER.tar.gz" \
  -p "sinowisp-x86_64-unknown-linux-gnu-$VER.tar.gz"
tar -xzf "$tmp/sinowisp-x86_64-pc-windows-msvc-$VER.tar.gz" -C .
tar -xzf "$tmp/sinowisp-x86_64-unknown-linux-gnu-$VER.tar.gz" -C .
rm -rf "$tmp"
echo "ok: $(./sinowisp.exe --version 2>/dev/null || ./sinowisp --version)"
