# lear

Mistyped `clear`? Enjoy King Lear instead.

```
$ lear
ACT I

SCENE I. A Room of State in King Lear's Palace

 Enter Kent, Gloucester and Edmund.

KENT.
I thought the King had more affected the Duke of Albany than Cornwall...
```

`lear` is a joke CLI in the tradition of [`sl`](https://github.com/mtoyoda/sl) (steam locomotive for mistyping `ls`). When you accidentally type `lear` instead of `clear`, your terminal spits out the text of Shakespeare's *King Lear*.

Press `Ctrl+C` to exit (you quitter).

## Install

### Homebrew

```bash
brew tap vasilescur/tap
brew install lear
```

Or in one line:

```bash
brew install vasilescur/tap/lear
```

### pip

```bash
pip install .
```

After installing via pip, run the setup script to add `lear` to your shell:

```bash
bash scripts/setup.sh
```

This adds an alias to your `~/.zshrc` or `~/.bashrc` so `lear` is always available.

## Usage

```bash
usage: __main__.py [-h] [-v] [-d MS] [-m MS]

Mistyped 'clear'? Enjoy King Lear instead.

options:
  -h, --help             show this help message and exit
  -v, --version          show program's version number and exit
  -d MS, --delay MS      base per-character delay in ms (default: 15)
  -m MS, --max-delay MS  maximum per-character delay in ms (default: 100)

```

## Homebrew Tap Setup (for maintainers)

To publish this as a Homebrew tap:

1. Create a GitHub repo named `homebrew-tap`
2. Copy `Formula/lear.rb` into it
3. Create a GitHub release with tag `v1.0.0` on the `lear` repo
4. Get the tarball sha256:
   ```bash
   curl -sL https://github.com/vasilescur/lear/archive/refs/tags/v1.0.0.tar.gz | shasum -a 256
   ```
5. Replace `PLACEHOLDER_SHA256` in the formula with the actual hash
6. Users can then install with `brew install vasilescur/tap/lear`

## License

MIT
