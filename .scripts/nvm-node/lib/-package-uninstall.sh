#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/nvm/lib/--index.sh

_nvm_node_package_uninstall() {
    local FUNCTION_NAME="_nvm_node_package_uninstall"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_error "${FUNCTION_NAME}" "Missing implementation!"
    exit 1
}
