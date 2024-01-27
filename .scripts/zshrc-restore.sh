#!/bin/bash
#
# TOBE ADDED --> Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

. ./.scripts/utils/-utils-env-vars-reader.sh

_echoInfoSeparator
_echoInfo "# Restoring ${LEGO_REPO_HOME_DIR}/.zshrc/zshrc into ~/.zshrc"
_echoInfo "# "
_echoInfo "# "
cp ${LEGO_REPO_HOME_DIR}/.zshrc/zshrc ~/.zshrc

_echoInfoSeparator

cat ~/.zshrc

_echoInfoSeparator
_echoInfo "# Reloading ~/.zshrc file"
_echoInfo "# "
_echoInfo "# "
source ~/.zshrc
