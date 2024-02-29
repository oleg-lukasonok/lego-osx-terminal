#
# TOBE ADDED --> Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

. ./.scripts/utils/-utils-env-vars-reader.sh

_echoInfoSeparator
_echoInfo "# Installing yarn"
_echoInfo "# "
_echoInfo "# "

brew install yarn

_echoInfoSeparator
_echoInfo "# yarn --version"
_echoInfo "# "
_echoInfo "# "
yarn --version
