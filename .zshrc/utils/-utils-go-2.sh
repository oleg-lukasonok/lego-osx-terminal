#!/bin/zsh
#
# TOBE ADDED --> Licence & Copyright Disclaimer
#

go2() {
  local TMP_ARGS=("$@")
  local TMP_PROJECTS_TYPE=""
  local TMP_PROJECTS_VALUE=""
  local TMP_IS_GO2=false
  local TMP_IS_GO2_LIST=false
  while [[ "$#" -gt 0 ]]; do
    case $1 in
    --projects-ibm)
      export TMP_PROJECTS_TYPE="projects-ibm"
      export TMP_PROJECTS_VALUE="$2"
      TMP_IS_GO2=true
      ;;
    --projects-ibm-list)
      export TMP_PROJECTS_TYPE="projects-ibm"
      TMP_IS_GO2_LIST=true
      ;;
    --projects-roche)
      export TMP_PROJECTS_TYPE="projects-roche"
      export TMP_PROJECTS_VALUE="$2"
      TMP_IS_GO2=true
      ;;
    --projects-roche-list)
      export TMP_PROJECTS_TYPE="projects-roche"
      export TMP_PROJECTS_VALUE="$2"
      TMP_IS_GO2_LIST=true
      ;;
    --projects-personal)
      export TMP_PROJECTS_TYPE="projects-personal"
      export TMP_PROJECTS_VALUE="$2"
      TMP_IS_GO2=true
      ;;
    --projects-personal-list)
      export TMP_PROJECTS_TYPE="projects-personal"
      export TMP_PROJECTS_VALUE="$2"
      TMP_IS_GO2_LIST=true
      ;;
    --help)
      echo ""
      echo "Available project types: ibm | roche | personal"
      echo ""
      echo "Available commands:"
      echo ""
      echo "go2 --projects-<type>-list ---> lists available projects"
      echo ""
      echo "go2 --projects-<type> <project> ---> moves you to project directory"
      echo ""
      ;;
    *) ;;
    esac
    shift
  done
  if
    [ "$TMP_IS_GO2" = true ]
  then
    cd "${HOME}/${TMP_PROJECTS_TYPE}/${TMP_PROJECTS_VALUE}"
  fi
  if
    [ "$TMP_IS_GO2_LIST" = true ]
  then
    ls "${HOME}/${TMP_PROJECTS_TYPE}"
  fi
  set -- "${TMP_ARGS[@]}"
}
