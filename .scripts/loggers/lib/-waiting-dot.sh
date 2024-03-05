#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/-enable-trailing-new-line.sh

_loggers_waitingDot() {
  echo -n "." >&2
  export NI_LOGGER_TRAILING_NEW_LINE_DISABLED=""
}
