#!/bin/bash
#
# TOBE ADDED
# - Licence & Copyright Disclaimer
#
. ./scripts/utils/-loggers.sh

. ./scripts/utils/-utils-env-vars-reader.sh

export NI_CLUSTER_REGISTER_COMMAND=""

while [[ "$#" -gt 0 ]]; do
    case $1 in
    --command)
        export NI_CLUSTER_REGISTER_COMMAND="$2"
        ;;
    *) ;;
    esac
    shift
done

set -- "${NI_ALL_ARGS[@]}"

_echoInfo "# ENV_VAR NI_CLUSTER_REGISTER_COMMAND: ${NI_CLUSTER_REGISTER_COMMAND}"
_echoInfo "# "
_echoInfo "# "
