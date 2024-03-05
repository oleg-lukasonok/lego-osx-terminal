#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/base/lib/-export-env-variables-from-file.sh

_base_exportEnvVarsFrom_fileDotEnv() {
  local FUNCTION_NAME="_base_exportEnvVarsFrom_fileDotEnv"
  _loggers_infoX "${FUNCTION_NAME}"

  _base_exportEnvVariablesFrom_file "${LOCAL_FILE_DOT_ENV}"
}
