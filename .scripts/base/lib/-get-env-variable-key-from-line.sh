#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_base_getEnvVariableKey_fromLine() {
  local FUNCTION_NAME="_base_getEnvVariableKey_fromLine"
  _loggers_infoX "${FUNCTION_NAME}"

  local TMP_LINE="${1}"

  local RET_VAL=$(
    echo $TMP_LINE | awk -F "=" '{print $1}'
  )

  echo "${RET_VAL}"
}
