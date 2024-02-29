#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------
. ./.scripts/loggers/lib/-enable-trailing-new-line.sh

_loggers_infoX() {
    _loggers_enableTrailingNewLine

    local TMP_1ST_PARAM="${1}${LOCAL_STRING_050_SPACES}"
    TMP_1ST_PARAM="${TMP_1ST_PARAM:0:50}"
    local TMP_LINE="# ${TMP_1ST_PARAM} #     ${2}"

    echo -e "\033[1;36m${TMP_LINE}\033[0m" >&2
}

_loggers_infoXYellow() {
    _loggers_enableTrailingNewLine

    local TMP_1ST_PARAM="${1}${LOCAL_STRING_050_SPACES}"
    TMP_1ST_PARAM="${TMP_1ST_PARAM:0:50}"
    local TMP_LINE="# ${TMP_1ST_PARAM} #     $2"

    echo -e "\033[1;33m${TMP_LINE}\033[0m" >&2
}
