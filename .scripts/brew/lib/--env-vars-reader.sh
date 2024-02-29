#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------
. ./.scripts/utils/-loggers.sh

. ./.scripts/utils/-utils-env-vars-reader.sh

_echoInfoSeparator
_echoInfo "# Installing curl"
_echoInfo "# "
_echoInfo "# "

brew install curl
