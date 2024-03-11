#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/os-manager/lib/--index.sh

_podman_package_info() {
    local FUNCTION_NAME="_podman_package_info"
    _loggers_info "${FUNCTION_NAME}"

    _osManager_packageInfo "podman"
}
