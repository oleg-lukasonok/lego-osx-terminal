#!/bin/bash
#
# TOBE ADDED
# - Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

export LEGO_REPO_HOME_DIR=$(pwd)

export LEGO_CLOUD_ENV="lego"

LEGO_ALL_ARGS=("$@")

while [[ "$#" -gt 0 ]]; do
  case $1 in
  --cloud-env)
    export LEGO_CLOUD_ENV="$2"
    ;;
  *) ;;
  esac
  shift
done

set -- "${LEGO_ALL_ARGS[@]}"

_echoInfoSeparator
_echoInfo "# Environment variables..."
_echoInfo "# "
_echoInfo "# ENV_VAR LEGO_REPO_HOME_DIR: ${LEGO_REPO_HOME_DIR}"
_echoInfo "# ENV_VAR LEGO_CLOUD_ENV: ${LEGO_CLOUD_ENV}"
_echoInfo "# "
_echoInfo "# "
