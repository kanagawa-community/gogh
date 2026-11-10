#!/usr/bin/env bash
# Kanagawa Lotus for Gogh. Run it with GOGH_APPLY_SCRIPT set to the
# path of Gogh's apply-colors.sh.
# https://github.com/kanagawa-community/gogh

export PROFILE_NAME="Kanagawa Lotus"
export COLOR_01="#1f1f28"
export COLOR_02="#c84053"
export COLOR_03="#6f894e"
export COLOR_04="#77713f"
export COLOR_05="#4d699b"
export COLOR_06="#b35b79"
export COLOR_07="#597b75"
export COLOR_08="#545464"
export COLOR_09="#8a8980"
export COLOR_10="#d7474b"
export COLOR_11="#6e915f"
export COLOR_12="#836f4a"
export COLOR_13="#6693bf"
export COLOR_14="#624c83"
export COLOR_15="#5e857a"
export COLOR_16="#43436c"
export BACKGROUND_COLOR="#f2ecbc"
export FOREGROUND_COLOR="#545464"
export CURSOR_COLOR="#43436c"

bash "${GOGH_APPLY_SCRIPT:?set GOGH_APPLY_SCRIPT to the path of apply-colors.sh from Gogh}"
