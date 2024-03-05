#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/os-manager/lib/--index.sh

_nvm_uninstall() {
    local FUNCTION_NAME="_nvm_uninstall"
    _loggers_info "${FUNCTION_NAME}"

    _osManager_execPackageUninstall "nvm"
}
