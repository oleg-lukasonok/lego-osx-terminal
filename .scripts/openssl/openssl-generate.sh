#!/bin/bash
#
# TOBE ADDED - Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

. ./.scripts/utils/-utils-openssl-env-vars-reader.sh
. ./.scripts/utils/-utils-openssl.sh

_echoInfoSeparator
_echoInfo "# Generating keys & certs for ca & client"
_echoInfo "# "
_echoInfo "# "

_localStorage_generateCertificates
