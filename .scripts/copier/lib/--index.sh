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
. ./.scripts/copier/lib/--env-vars-reader.sh
#
#       --> required environment variables are validated for existance
#
. ./.scripts/copier/lib/--env-vars-validator.sh
#
#       --> available functions are imported/exported
#
. ./.scripts/copier/lib/--index-api.sh
# -------------------------------------------------------------------------------------
