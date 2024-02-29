#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

_loggers_enableTrailingNewLine() {
    if
        [ -z "$NI_LOGGER_TRAILING_NEW_LINE_DISABLED" ]
    then
        echo "" >&2
        export NI_LOGGER_TRAILING_NEW_LINE_DISABLED="TRUE"
    fi
}
