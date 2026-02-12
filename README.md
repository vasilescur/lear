# lear

Mistyped `clear`? Enjoy King Lear instead.

<img width="1796" height="1496" alt="image" src="https://github.com/user-attachments/assets/091b8582-afab-49d8-a1f7-1cc5e3e01ed1" />

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
pip install git+https://github.com/vasilescur/lear.git
```

## Usage

```
usage: lear [-h] [-v] [-d MS] [-m MS] [-f PATH]

Mistyped 'clear'? Enjoy King Lear instead.

options:
  -h, --help             show this help message and exit
  -v, --version          show program's version number and exit
  -d MS, --delay MS      base per-character delay in ms (default: 15)
  -m MS, --max-delay MS  maximum per-character delay in ms (default: 100)
  -f PATH, --file PATH   path to a custom text file to stream (default: King Lear)
```

Stream your own text file instead of King Lear:

```bash
lear -f ~/my_text.txt
```

## License

MIT
