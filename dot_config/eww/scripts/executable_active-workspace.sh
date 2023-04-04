#!/usr/bin/env sh

hyprctl activewindow -j | jq .workspace.id
