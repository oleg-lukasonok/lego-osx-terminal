#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/-enable-trailing-new-line.sh

_loggers_warn() {
  _loggers_enableLoggerTrailingNewLine
  echo -e "\033[1;33m$1\033[0m" >&2
}

_loggers_warnX() {
  _loggers_enableLoggerTrailingNewLine

  local TMP_1ST_PARAM="${1}${LOCAL_STRING_050_SPACES}"
  TMP_1ST_PARAM="${TMP_1ST_PARAM:0:50}"
  local TMP_LINE="# ${TMP_1ST_PARAM} #     $2"

  echo -e "\033[1;33m${TMP_LINE}\033[0m" >&2
}

_loggers_warnXSeparator() {
  _loggers_enableLoggerTrailingNewLine
  _loggers_warnX "$1" "---------------------------------------------------------"
}
