# lear

Mistyped `clear`? Enjoy King Lear instead.

<image width="100%" src="https://raw.githubusercontent.com/vasilescur/lear/refs/heads/master/demo.gif" />

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

## Star History

You could help make this line go up! [Star the repo](https://github.com/vasilescur/lear/stargazers)

[![Star History Chart](https://api.star-history.com/svg?repos=vasilescur/lear&type=Date)](https://star-history.com/#vasilescur/lear&Date)

## License

MIT
