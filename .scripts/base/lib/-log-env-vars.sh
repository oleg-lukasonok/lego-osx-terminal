#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_base_logEnvVars() {
  local FUNCTION_NAME="_base_logEnvVars"
  _loggers_infoX "${FUNCTION_NAME}"
  _loggers_infoX "${FUNCTION_NAME}" "LOCAL_OS_TYPE: ${LOCAL_OS_TYPE}"
  _loggers_infoX "${FUNCTION_NAME}" "LOCAL_HOME_DIR: ${LOCAL_FILE_ENV}"
  _loggers_infoX "${FUNCTION_NAME}" "LOCAL_FILE_DOT_ENV: ${NI_DIR_POC_TEMPLATES}"
  _loggers_infoX "${FUNCTION_NAME}" "LOCAL_FILE_ENV: ${LOCAL_FILE_ENV}"
  _loggers_infoX "${FUNCTION_NAME}" "NI_CLOUD_ENV: ${NI_CLOUD_ENV}"
}
