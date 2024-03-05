#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------
#
#       --> passed parameters are read & exported environment variables
#
. ./.scripts/minikube/lib/--env-vars-reader.sh
#
#       --> required environment variables are validated for existance
#
. ./.scripts/minikube/lib/--env-vars-validator.sh
#
#       --> available functions are imported/exported
#
. ./.scripts/minikube/lib/--index-api.sh
# -------------------------------------------------------------------------------------
