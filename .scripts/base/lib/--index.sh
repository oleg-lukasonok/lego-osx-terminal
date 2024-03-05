#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------
#
#       --> Importing local shell packages
#
. ./.scripts/loggers/lib/--index.sh
#
#
#       --> passed parameters are read & exported environment variables
#
. ./.scripts/base/lib/--env-vars-reader.sh
#
#       --> required environment variables are validated for existance
#
. ./.scripts/base/lib/--env-vars-validator.sh
#
#       --> available functions are imported/exported
#
. ./.scripts/base/lib/--index-api.sh
# -------------------------------------------------------------------------------------
