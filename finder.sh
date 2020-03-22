#!/usr/bin/env bash

# This script has been adapted from https://github.com/davatorium/rofi-scripts/blob/master/rofi-finder/finder.sh
if [ ! -z "$@" ]
then
  QUERY=$@
  if [[ "$@" == /* ]]
  then
    if [[ "$@" == *\?\? ]]
    then
      coproc ( gnome-open "${QUERY%\/* \?\?}"  > /dev/null 2>&1 )
      exec 1>&-
      exit;
    else
      coproc ( gnome-open "$@"  > /dev/null 2>&1 )
      exec 1>&-
      exit;
    fi
  elif [[ "$@" == \!\!* ]]
  then
    echo "This dialog will return matches from all local files."
    echo "Type a search term, hit enter. Results are returned."
    echo "Type more for further filtering or scroll down."
    echo "Hit <enter> on a line to launch with default app."
    echo "To search again type: !<search_query>"
    echo "To scroll horizontally type: <alt> ."
  elif [[ "$@" == \?* ]]
  then
    while read -r line; do
      echo "$line" \?\?
    done <<< $(locate "$QUERY" 2>&1 | grep -v 'Permission denied\|Input/output error')
  else
    locate "$QUERY" 2>&1 | grep -v 'Permission denied\|Input/output error'
  fi
else
  echo "This dialog will return matches from all local files."
  echo "Type a search term, hit enter. Results are returned."
  echo "Type more for further filtering or scroll down."
  echo "Hit <enter> on a line to launch with default app."
  echo "To search again type: !<search_query>"
  echo "To scroll horizontally type: <alt> ."
fi
