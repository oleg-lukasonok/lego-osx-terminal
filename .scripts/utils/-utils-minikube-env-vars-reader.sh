#!/bin/bash
#
# TOBE ADDED
# - Licence & Copyright Disclaimer
#
. ./scripts/utils/-loggers.sh

. ./scripts/utils/-utils-env-vars-reader.sh

export NI_MINIKUBE_CONFIG_DRIVER="podman"
export NI_MINIKUBE_CONFIG_CONTAINER_RUNTIME="cri-o"

_echoInfo "# ENV_VAR NI_MINIKUBE_CONFIG_DRIVER: ${NI_MINIKUBE_CONFIG_DRIVER}"
_echoInfo "# ENV_VAR NI_MINIKUBE_CONFIG_DRIVER: ${NI_MINIKUBE_CONFIG_CONTAINER_RUNTIME}"
_echoInfo "# "
_echoInfo "# "
