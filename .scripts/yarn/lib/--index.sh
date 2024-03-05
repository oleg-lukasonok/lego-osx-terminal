#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------
#
#       --> passed parameters are read & exported environment variables
#
. ./.scripts/yarn/lib/--env-vars-reader.sh
#
#       --> required environment variables are validated for existance
#
. ./.scripts/yarn/lib/--env-vars-validator.sh
#
#       --> available functions are imported/exported
#
. ./.scripts/yarn/lib/--index-api.sh
# -------------------------------------------------------------------------------------
