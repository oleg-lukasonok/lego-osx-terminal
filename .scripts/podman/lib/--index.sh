#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------
#
#       --> passed parameters are read & exported environment variables
#
. ./.scripts/podman/lib/--env-vars-reader.sh
#
#       --> required environment variables are validated for existance
#
. ./.scripts/podman/lib/--env-vars-validator.sh
#
#       --> available functions are imported/exported
#
. ./.scripts/podman/lib/--index-api.sh
# -------------------------------------------------------------------------------------
