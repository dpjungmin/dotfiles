#!/usr/bin/env sh

bluetoothctl info | grep Name | cut -d ' ' -f2-
