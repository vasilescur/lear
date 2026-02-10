# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What is lear?

A humorous CLI tool (like `sl` for `ls`). When you mistype `clear` as `lear`, it streams Shakespeare's King Lear to your terminal character-by-character with realistic typing delays.

## Commands

```bash
make dev        # Install in editable mode (pip install -e .)
make build      # Build distribution (python -m build)
make install    # Install from source (pip install .)
make clean      # Remove dist/, build/, *.egg-info/
make sha        # Calculate SHA256 for Homebrew formula

lear            # Run the tool (after installing)
python -m lear  # Run directly via module
```

There is no test suite. The only test is the Homebrew formula's `lear --version` check.

## Architecture

This is a small, pure-Python (3.9+, no runtime dependencies) single-purpose CLI.

- `lear/cli.py` — All logic lives here: argument parsing (`-d` base delay, `-m` max delay, `-v` version), the `char_delay()` typing simulation function, and the main character-streaming loop.
- `lear/king_lear.txt` — Bundled full text of King Lear (~6k lines), loaded via `importlib.resources`.
- `lear/__main__.py` — Enables `python -m lear`.
- `Formula/lear.rb` — Homebrew formula for `brew install vasilescur/tap/lear`.
- `scripts/setup.sh` — Post-install shell alias setup (detects zsh/bash/posix).

Entry point: `lear.cli:main` (defined in `pyproject.toml`).

The typing simulation in `char_delay()` uses weighted random branching: ~15% instant, ~77% Gaussian around base delay, ~8% uniform random pause.
