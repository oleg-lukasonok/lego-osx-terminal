#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------
export NI_LOGGER_TRAILING_NEW_LINE_ENABLED="TRUE"

export LOCAL_STRING_005_SPACES="          "
export LOCAL_STRING_010_SPACES="${LOCAL_STRING_005_SPACES}${LOCAL_STRING_005_SPACES}"
export LOCAL_STRING_050_SPACES="${LOCAL_STRING_010_SPACES}${LOCAL_STRING_010_SPACES}${LOCAL_STRING_010_SPACES}${LOCAL_STRING_010_SPACES}${LOCAL_STRING_010_SPACES}"

_enableLoggerTrailingNewLine() {
  if [ -z "$NI_LOGGER_TRAILING_NEW_LINE_DISABLED" ]; then
    echo "" >&2
    export NI_LOGGER_TRAILING_NEW_LINE_DISABLED="TRUE"
  fi
}

_echoInfo() {
  _enableLoggerTrailingNewLine
  echo -e "\033[1;36m$1\033[0m" >&2
}

_echoInfoX() {
  _enableLoggerTrailingNewLine

  local TMP_1ST_PARAM="${1}${LOCAL_STRING_050_SPACES}"
  TMP_1ST_PARAM="${TMP_1ST_PARAM:0:50}"
  local TMP_LINE="# ${TMP_1ST_PARAM} #     ${2}"

  echo -e "\033[1;36m${TMP_LINE}\033[0m" >&2
}

_echoInfoYellow() {
  _enableLoggerTrailingNewLine
  echo -e "\033[1;33m$1\033[0m" >&2
}

_echoInfoXYellow() {
  _enableLoggerTrailingNewLine

  local TMP_1ST_PARAM="${1}${LOCAL_STRING_050_SPACES}"
  TMP_1ST_PARAM="${TMP_1ST_PARAM:0:50}"
  local TMP_LINE="# ${TMP_1ST_PARAM} #     $2"

  echo -e "\033[1;33m${TMP_LINE}\033[0m" >&2
}

_echoInfoXSeparator() {
  _enableLoggerTrailingNewLine
  _echoInfoX "$1" "---------------------------------------------------------"
}

_echoInfoSeparator() {
  _enableLoggerTrailingNewLine
  _echoInfo "# ---------------------------------------------------------"
}

_echoInfoYellowSeparator() {
  _enableLoggerTrailingNewLine
  _echoInfoYellow "# ---------------------------------------------------------"
}

_echoError() {
  _enableLoggerTrailingNewLine
  echo -e "\033[1;31m$1\033[0m" >&2
}

_echoErrorX() {
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
