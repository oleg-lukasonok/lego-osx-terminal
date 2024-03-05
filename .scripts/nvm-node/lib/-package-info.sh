#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/nvm/lib/--index.sh

_nvm_node_package_info() {
    local FUNCTION_NAME="_nvm_node_package_info"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_error "${FUNCTION_NAME}" "Missing implementation!"
    exit 1
}