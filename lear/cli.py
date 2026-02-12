import argparse
import sys
import time
import random
from importlib import resources

from lear import __version__

DEFAULT_DELAY = 15
DEFAULT_MAX_DELAY = 100


def char_delay(base: int, max_delay: int) -> float:
    """Return a delay in seconds for a single character.

    Most characters are near *base* ms, but occasional characters spike
    up to *max_delay* ms and others have zero delay — giving the output
    a natural, human-typing feel.
    """
    r = random.random()
    if r < 0.15:
        # ~15 % of characters: no delay (burst of fast typing)
        ms = 0
    elif r < 0.92:
        # ~77 % of characters: clustered around the base delay
        ms = random.gauss(base, base * 0.4)
    else:
        # ~8 % of characters: a noticeable pause (thinking / hesitation)
        ms = random.uniform(base, max_delay)
    return max(0.0, ms) / 1000


def main():
    parser = argparse.ArgumentParser(
        description="Mistyped 'clear'? Enjoy King Lear instead.",
    )
    parser.add_argument(
        "-v",
        "--version",
        action="version",
        version=f"%(prog)s {__version__}",
    )
    parser.add_argument(
        "-d",
        "--delay",
        type=int,
        default=DEFAULT_DELAY,
        metavar="MS",
        help=f"base per-character delay in ms (default: {DEFAULT_DELAY})",
    )
    parser.add_argument(
        "-m",
        "--max-delay",
        type=int,
        default=DEFAULT_MAX_DELAY,
        metavar="MS",
        help=f"maximum per-character delay in ms (default: {DEFAULT_MAX_DELAY})",
    )
    parser.add_argument(
        "-f",
        "--file",
        type=str,
        default=None,
        metavar="PATH",
        help="path to a custom text file to stream (default: King Lear)",
    )
    args = parser.parse_args()

    if args.file:
        try:
            with open(args.file, encoding="utf-8") as fh:
                content = fh.read()
        except FileNotFoundError:
            parser.error(f"file not found: {args.file}")
    else:
        text_file = resources.files("lear").joinpath("king_lear.txt")
        content = text_file.read_text(encoding="utf-8")

    try:
        for char in content:
            sys.stdout.write(char)
            sys.stdout.flush()
            time.sleep(char_delay(args.delay, args.max_delay))
    except KeyboardInterrupt:
        print()
        sys.stdout.flush()


if __name__ == "__main__":
    main()
