#!/usr/bin/env sh

nmcli | grep "connected to" | cut -d ' ' -f4
