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

_nvm_node_package_install() {
    local FUNCTION_NAME="_nvm_node_package_install"
    _loggers_info "${FUNCTION_NAME}"

    nvm install --lts
}
