#
# TOBE ADDED --> Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

. ./.scripts/utils/-utils-env-vars-reader.sh

_echoInfoSeparator
_echoInfo "# Backing ~/.zshrc into ${LEGO_REPO_HOME_DIR}/.zshrc/zshrc"
_echoInfo "# "
_echoInfo "# "

rm -rf ${LEGO_REPO_HOME_DIR}/.zshrc/zshrc/utils
rm -rf ${LEGO_REPO_HOME_DIR}/.zshrc/zshrc

cp "${HOME}/.zshrc" ${LEGO_REPO_HOME_DIR}/.zshrc/zshrc
cp -r "${HOME}/.zshrc-utils/" ${LEGO_REPO_HOME_DIR}/.zshrc/utils

_echoInfoSeparator
cat "${LEGO_REPO_HOME_DIR}/.zshrc/zshrc"
_echoInfoSeparator
ls -la .zshrc/utils
