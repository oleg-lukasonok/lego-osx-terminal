#!/bin/zsh
#
# TOBE ADDED --> Licence & Copyright Disclaimer
#

go2() {
  local TMP_ARGS=("$@")
  local TMP_PROJECT=""
  while [[ "$#" -gt 0 ]]; do
    case $1 in
    --projects)
      export TMP_PROJECT="$2"
      cd "${HOME}/projects/${TMP_PROJECT}"
      ;;
    --projects-ibm)
      export TMP_PROJECT_IBM="$2"
      cd "${HOME}/projects-ibm/${TMP_PROJECT}"
      ;;
    --projects-roche)
      export TMP_PROJECT_IBM="$2"
      cd "${HOME}/projects-roche/${TMP_PROJECT}"
      ;;
    --projects-personal)
      export TMP_PROJECT_IBM="$2"
      cd "${HOME}/projects-personal/${TMP_PROJECT}"
      ;;
    *) ;;
    esac
    shift
  done
  set -- "${TMP_ARGS[@]}"
}
