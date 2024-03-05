#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

export REPO_HOME_DIR=$(pwd)
export REPO_DOT_ENV_FILE=".env"

NI_ALL_ARGS=("$@")
while [[ "$#" -gt 0 ]]; do
    case $1 in
    --repo-dot-env-file)
        export REPO_DOT_ENV_FILE="$2"
        ;;
    *) ;;
    esac
    shift
done
set -- "${NI_ALL_ARGS[@]}"
