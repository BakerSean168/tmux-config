#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "$0")" && pwd)
TARGET="$HOME/.tmux.conf"
STAMP=$(date +%Y%m%d%H%M%S)

if [[ -e "$TARGET" && ! -L "$TARGET" ]]; then
  cp -a "$TARGET" "$TARGET.backup.$STAMP"
fi
ln -sfn "$ROOT/tmux.conf" "$TARGET"

TPM_DIR="$HOME/.tmux/plugins/tpm"
if [[ ! -d "$TPM_DIR/.git" ]]; then
  git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi

printf 'tmux-config installed: %s -> %s\n' "$TARGET" "$ROOT/tmux.conf"
