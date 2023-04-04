#!/usr/bin/env sh

MAX_LEN=100

title=$(hyprctl activewindow -j | jq .title)
title_trimmed=$(echo $title | head -c $MAX_LEN);

if [[ "${#title}" -gt MAX_LEN ]]; then
  echo "$title_trimmed..."
else
  echo $title_trimmed
fi
