#!/usr/bin/env bash

BIN=phpmd
RULESET=unusedcode,codesize,controversial,design,naming

# The reading options part
while [[ $# -gt 0 ]] && [[ ."$1" = .* ]] ;
do
    opt="$1";
    shift;              #expose next argument
    case "$opt" in
        "--" ) break 2;;
        "--bin="* )
            BIN="${opt#*=}";;
        "--ruleset="* )
            RULESET="${opt#*=}";;
   esac
done

FILES="$(gitamine f:c | grep -E "\\.php$" | tr '\r\n' ',')"
FILES=${FILES%?}
LINES=${#FILES}

if [ "$LINES" -gt "1" ]
then
    eval "${BIN} ${FILES} text ${RULESET}"
fi
