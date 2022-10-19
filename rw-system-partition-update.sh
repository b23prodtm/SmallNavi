#!/bin/bash
#if [ "$(uname -r | awk 'BEGIN{FS="."}{print $1}')" -lt 20 ]; then echo "Min Kernel >= 20.0.0"; exit 0; fi
if [ "$#" -lt 2 ]; then echo "$0 <special> <node>"; exit 0; fi
partition="$1"
mount="$2"
kmutil install --volume-root "$mount" --update-all
bless --folder "$mount"/System/Library/CoreServices --bootefi --create-snapshot
