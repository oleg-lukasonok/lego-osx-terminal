#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/os-manager/lib/--env-vars-reader.sh

export NIX_BUILD_GROUP_ID=30000
export NIX_FIRST_BUILD_UID=301

export DEVENV_SH_CACHE_DIR=".cache/devenv-sh"
export DEVENV_SH_CACHE_NIX_INSTALLER="${DEVENV_SH_CACHE_DIR}/nix-installer.sh"

mkdir -p -- "${DEVENV_SH_CACHE_DIR}"
