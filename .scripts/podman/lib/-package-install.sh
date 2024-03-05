#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/os-manager/lib/--index.sh

_podman_package_install() {
    local FUNCTION_NAME="_podman_package_install"
    _loggers_info "${FUNCTION_NAME}"

    _osManager_packageInstall "podman"
}
