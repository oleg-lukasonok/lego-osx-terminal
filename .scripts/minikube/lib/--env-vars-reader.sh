#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/os-manager/lib/--env-vars-reader.sh

export MINIKUBE_CONFIG_DRIVER="podman"
export MINIKUBE_CONFIG_CONTAINER_RUNTIME="cri-o"
