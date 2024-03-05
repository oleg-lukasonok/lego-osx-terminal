#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------
#
#       --> passed parameters are read & exported environment variables
#
. ./.scripts/nvm-node/lib/--env-vars-reader.sh
#
#       --> required environment variables are validated for existance
#
. ./.scripts/nvm-node/lib/--env-vars-validator.sh
#
#       --> available functions are imported/exported
#
. ./.scripts/nvm-node/lib/--index-api.sh
# -------------------------------------------------------------------------------------
