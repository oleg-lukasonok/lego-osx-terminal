#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/os-manager/lib/--env-vars-reader.sh

export MINIKUBE_CONFIG_DRIVER="podman"
export MINIKUBE_CONFIG_CONTAINER_RUNTIME="cri-o"
