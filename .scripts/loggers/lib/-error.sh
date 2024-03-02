#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------
. ./.scripts/loggers/lib/-enable-trailing-new-line.sh

_echoInfoYellowSeparator() {
    _enableLoggerTrailingNewLine
    _echoInfoYellow "# ---------------------------------------------------------"
}

_echoError() {
    _enableLoggerTrailingNewLine
    echo -e "\033[1;31m$1\033[0m" >&2
}

_loggers_errorX() {
    _enableLoggerTrailingNewLine

    local TMP_1ST_PARAM="${1}${LOCAL_STRING_050_SPACES}"
    TMP_1ST_PARAM="${TMP_1ST_PARAM:0:50}"
    local TMP_LINE="# ${TMP_1ST_PARAM} #     $2"

    echo -e "\033[1;31m${TMP_LINE}\033[0m" >&2
}

_echoWaitingDot() {
    echo -n "." >&2
    export NI_LOGGER_TRAILING_NEW_LINE_DISABLED=""
}
