#!/bin/zsh
#
# TOBE ADDED --> Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

. ./.scripts/utils/-utils-env-vars-reader.sh

_echoInfoSeparator
_echoInfo "# Restoring ${LEGO_REPO_HOME_DIR}/.zshrc/zshrc into ~/.zshrc"
_echoInfo "# "
_echoInfo "# "
rm -rf ~/.zshrc-utils
rm -rf ~/.zshrc

cp ${LEGO_REPO_HOME_DIR}/.zshrc/zshrc ~/.zshrc
cp -r ${LEGO_REPO_HOME_DIR}/.zshrc/utils "${HOME}/.zshrc-utils"

_echoInfoSeparator

cat ~/.zshrc

ls -la ~/.zshrc-utils

_echoInfoSeparator
_echoInfo "# Reloading ~/.zshrc file"
_echoInfo "# "
_echoInfo "# "
source ~/.zshrc
