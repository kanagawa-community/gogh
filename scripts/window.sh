# Window hook for .github/scripts/capture-windows.sh: Gogh's own apply-colors.sh,
# at a fixed commit, patches a throwaway foot config with each theme, then foot
# runs the shared session from docs/PREVIEWS.md.
# Requires: foot, curl, fastfetch, eza.
# shellcheck shell=bash
name=Gogh

setup() {
  curl -fsSL -o "$work/apply-colors.sh" \
    https://raw.githubusercontent.com/Gogh-Co/Gogh/3277da1a295142cd8664e0657c5a3c2a44cc520a/apply-colors.sh
}

launch() {
  # apply-colors.sh changes only keys that exist, so the config lists them first.
  local home="$work/gogh-$1"
  mkdir -p "$home/.config/foot"
  {
    printf '[main]\nfont=%s:size=11\npad=8x8\n[colors-dark]\nforeground=000000\nbackground=000000\n' "$font"
    for i in 0 1 2 3 4 5 6 7; do printf 'regular%s=000000\nbright%s=000000\n' "$i" "$i"; done
  } >"$home/.config/foot/foot.ini"
  HOME=$home TERMINAL=foot GOGH_NONINTERACTIVE=1 GOGH_APPLY_SCRIPT=$work/apply-colors.sh \
    bash "$root/themes/kanagawa-$1.sh" >/dev/null
  printf 'foot -c %s -T kanagawa %s %s' "$home/.config/foot/foot.ini" "$session" "$1"
}
