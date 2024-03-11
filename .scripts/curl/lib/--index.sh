#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------
#
#       --> passed parameters are read & exported environment variables
#
. ./.scripts/curl/lib/--env-vars-reader.sh
#
#       --> required environment variables are validated for existance
#
. ./.scripts/curl/lib/--env-vars-validator.sh
#
#       --> available functions are imported/exported
#
. ./.scripts/curl/lib/--index-api.sh
# -------------------------------------------------------------------------------------
