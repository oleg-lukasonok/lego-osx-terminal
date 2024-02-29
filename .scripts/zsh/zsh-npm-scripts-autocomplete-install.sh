#
# TOBE ADDED --> Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

. ./.scripts/utils/-utils-env-vars-reader.sh

_echoInfoSeparator
_echoInfo "# Installing zsh-npm-scripts-autocomplete"
_echoInfo "# "
_echoInfo "# "
git clone \
    git@github.com:grigorii-zander/zsh-npm-scripts-autocomplete.git \
    ~/.oh-my-zsh/custom/plugins/zsh-npm-scripts-autocomplete
