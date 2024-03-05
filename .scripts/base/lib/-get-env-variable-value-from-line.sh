#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_base_getEnvVariableValue_fromLine() {
  local FUNCTION_NAME="_base_getEnvVariableValue_fromLine"
  _loggers_infoX "${FUNCTION_NAME}"

  local TMP_LINE="${1}"

  local RET_VAL=$(
    echo $TMP_LINE | awk -F "=" '{print $2}'
  )
  RET_VAL=$(
    echo "${RET_VAL}" | awk -F "\"" '{print $2}'
  )

  echo "${RET_VAL}"
}
