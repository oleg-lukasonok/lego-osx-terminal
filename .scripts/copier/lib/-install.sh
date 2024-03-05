#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/os-manager/lib/--index.sh

_copier_install() {
    local FUNCTION_NAME="_copier_install"
    _loggers_info "${FUNCTION_NAME}"

    _osManager_execPackageInstall "copier"
}
