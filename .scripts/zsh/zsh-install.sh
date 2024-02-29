#
# TOBE ADDED --> Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

. ./.scripts/utils/-utils-env-vars-reader.sh

_echoInfoSeparator
_echoInfo "# Installing zsh"
_echoInfo "# "
_echoInfo "# "

brew install zsh

_echoInfoSeparator
_echoInfo "# zsh --version"
_echoInfo "# "
_echoInfo "# "
zsh --version
