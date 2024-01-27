#!/bin/bash
#
# TOBE ADDED --> Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

. ./.scripts/utils/-utils-env-vars-reader.sh

_echoInfoSeparator
_echoInfo "# Backing ~/.zshrc into ${LEGO_REPO_HOME_DIR}/.zshrc/zshrc"
_echoInfo "# "
_echoInfo "# "
cp ~/.zshrc ${LEGO_REPO_HOME_DIR}/.zshrc/zshrc
