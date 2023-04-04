#!/usr/bin/env sh

MAX_LEN=50

status=$(dropbox status 2> /dev/null)
status_trimmed=$(echo $status | head -c $MAX_LEN);

if [[ "${#status}" -gt MAX_LEN ]]; then
  echo "$status_trimmed..."
else
  echo $status_trimmed
fi
