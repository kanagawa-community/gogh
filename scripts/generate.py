#!/usr/bin/env python3
"""Write themes/kanagawa-<variant>.sh from the shared palette.

Usage: scripts/generate.py [path/to/palette.json]   (default: ../.github/palette.json)
"""
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
VARIANTS = ["wave", "dragon", "lotus"]
ANSI = ["black", "red", "green", "yellow", "blue", "magenta", "cyan", "white"]
# The 16 ANSI colors, normal then bright.
COLORS = [f"term.{c}" for c in ANSI] + [f"term.bright_{c}" for c in ANSI]


def roles(variant):
    """Map each role to its hex color; a role missing from the palette raises KeyError later."""
    return {role: c["hex"] for c in variant["colors"].values() for role in c["usage"]}

def theme(variant, appearance, c):
    out = [
        "#!/usr/bin/env bash",
        f"# Kanagawa {variant.capitalize()} for Gogh. Run it with GOGH_APPLY_SCRIPT set to the",
        "# path of Gogh's apply-colors.sh.",
        "# https://github.com/kanagawa-community/gogh",
        "",
        f'export PROFILE_NAME="Kanagawa {variant.capitalize()}"',
    ]
    out += [f'export COLOR_{i + 1:02}="{c[r]}"' for i, r in enumerate(COLORS)]
    out += [
        f'export BACKGROUND_COLOR="{c["ui.bg"]}"',
        f'export FOREGROUND_COLOR="{c["ui.fg"]}"',
        f'export CURSOR_COLOR="{c["ui.fg_dim"]}"',
        "",
        'bash "${GOGH_APPLY_SCRIPT:?set GOGH_APPLY_SCRIPT to the path of apply-colors.sh from Gogh}"',
    ]
    return "\n".join(out) + "\n"


def main():
    path = Path(sys.argv[1]) if len(sys.argv) > 1 else ROOT.parent / ".github" / "palette.json"
    variants = json.loads(path.read_text())["variants"]
    for v in VARIANTS:
        out = ROOT / "themes" / f"kanagawa-{v}.sh"
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_text(theme(v, variants[v]["appearance"], roles(variants[v])))
        print(out.relative_to(ROOT))


if __name__ == "__main__":
    main()
