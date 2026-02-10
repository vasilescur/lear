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
pip install git+https://github.com/vasilescur/lear.git
```

## Usage

```
usage: lear [-h] [-v] [-d MS] [-m MS]

Mistyped 'clear'? Enjoy King Lear instead.

options:
  -h, --help             show this help message and exit
  -v, --version          show program's version number and exit
  -d MS, --delay MS      base per-character delay in ms (default: 15)
  -m MS, --max-delay MS  maximum per-character delay in ms (default: 100)
```

## License

MIT
