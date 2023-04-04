#!/usr/bin/env sh

hyprctl workspaces -j | jq '[.[] | .id] | sort'
