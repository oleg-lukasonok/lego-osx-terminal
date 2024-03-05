#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/-enable-trailing-new-line.sh

_loggers_info() {
  _loggers_enableLoggerTrailingNewLine
  echo -e "\033[1;36m$1\033[0m" >&2
}

_loggers_infoX() {
  _loggers_enableLoggerTrailingNewLine

  local TMP_1ST_PARAM="${1}${LOCAL_STRING_050_SPACES}"
  TMP_1ST_PARAM="${TMP_1ST_PARAM:0:50}"
  local TMP_LINE="# ${TMP_1ST_PARAM} #     ${2}"

  echo -e "\033[1;36m${TMP_LINE}\033[0m" >&2
}

_loggers_infoXSeparator() {
  _loggers_enableLoggerTrailingNewLine
  _loggers_infoX "$1" "---------------------------------------------------------"
}
