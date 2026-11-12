#!/usr/bin/env bash
# Kanagawa Wave for Gogh. Run it with GOGH_APPLY_SCRIPT set to the
# path of Gogh's apply-colors.sh.
# https://github.com/kanagawa-community/gogh

export PROFILE_NAME="Kanagawa Wave"
export COLOR_01="#16161d"
export COLOR_02="#c34043"
export COLOR_03="#76946a"
export COLOR_04="#c0a36e"
export COLOR_05="#7e9cd8"
export COLOR_06="#957fb8"
export COLOR_07="#6a9589"
export COLOR_08="#c8c093"
export COLOR_09="#727169"
export COLOR_10="#e82424"
export COLOR_11="#98bb6c"
export COLOR_12="#e6c384"
export COLOR_13="#7fb4ca"
export COLOR_14="#938aa9"
export COLOR_15="#7aa89f"
export COLOR_16="#dcd7ba"
export BACKGROUND_COLOR="#1f1f28"
export FOREGROUND_COLOR="#dcd7ba"
export CURSOR_COLOR="#c8c093"

bash "${GOGH_APPLY_SCRIPT:?set GOGH_APPLY_SCRIPT to the path of apply-colors.sh from Gogh}"
