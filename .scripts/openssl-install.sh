#!/bin/bash
#
# TOBE ADDED - Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

. ./.scripts/utils/-utils-openssl-env-vars-reader.sh

npm run openssl:uninstall

_echoInfoSeparator
_echoInfo "# Installing openssl"
_echoInfo "# "
_echoInfo "# "

brew install openssl

_echoInfoSeparator
_echoInfo "# "
_echoInfo "# "
openssl version
