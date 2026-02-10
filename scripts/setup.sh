#!/usr/bin/env bash
# setup.sh — add `lear` to your shell so it's always available.
# Usage: bash scripts/setup.sh

set -euo pipefail

LEAR_BIN=$(command -v lear 2>/dev/null || true)

if [ -z "$LEAR_BIN" ]; then
  echo "Error: 'lear' not found on PATH."
  echo "Install it first:  brew install vasilescur/tap/lear"
  echo "            or:    pip install ."
  exit 1
fi

# Detect shell config file
if [ -n "${ZSH_VERSION:-}" ] || [ "$(basename "$SHELL")" = "zsh" ]; then
  RC_FILE="$HOME/.zshrc"
elif [ -n "${BASH_VERSION:-}" ] || [ "$(basename "$SHELL")" = "bash" ]; then
  RC_FILE="$HOME/.bashrc"
else
  RC_FILE="$HOME/.profile"
fi

ALIAS_LINE="alias lear='$(command -v lear)'"
MARKER="# lear - mistyped clear"

if grep -qF "$MARKER" "$RC_FILE" 2>/dev/null; then
  echo "lear is already configured in $RC_FILE"
  exit 0
fi

printf '\n%s\n%s\n' "$MARKER" "$ALIAS_LINE" >> "$RC_FILE"

echo "Added lear alias to $RC_FILE"
echo "Run:  source $RC_FILE"
echo "Then type 'lear' to enjoy King Lear."
