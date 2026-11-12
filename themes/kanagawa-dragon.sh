#!/usr/bin/env bash
# Kanagawa Dragon for Gogh. Run it with GOGH_APPLY_SCRIPT set to the
# path of Gogh's apply-colors.sh.
# https://github.com/kanagawa-community/gogh

export PROFILE_NAME="Kanagawa Dragon"
export COLOR_01="#0d0c0c"
export COLOR_02="#c4746e"
export COLOR_03="#8a9a7b"
export COLOR_04="#c4b28a"
export COLOR_05="#8ba4b0"
export COLOR_06="#a292a3"
export COLOR_07="#8ea4a2"
export COLOR_08="#c8c093"
export COLOR_09="#a6a69c"
export COLOR_10="#e46876"
export COLOR_11="#87a987"
export COLOR_12="#e6c384"
export COLOR_13="#7fb4ca"
export COLOR_14="#938aa9"
export COLOR_15="#7aa89f"
export COLOR_16="#c5c9c5"
export BACKGROUND_COLOR="#181616"
export FOREGROUND_COLOR="#c5c9c5"
export CURSOR_COLOR="#c8c093"

bash "${GOGH_APPLY_SCRIPT:?set GOGH_APPLY_SCRIPT to the path of apply-colors.sh from Gogh}"
