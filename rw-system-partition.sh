#!/usr/bin/env bash
if [ "$(uname -r | awk 'BEGIN{FS="."}{print $1}')" -lt 20 ]; then echo "Min Kernel >= 20.0.0"; exit 0; fi
if [ "$#" -lt 2 ]; then echo "$0 <special> <node>"; exit 0; fi
partition="$1"
mount="$2"
mkdir "$mount"
sudo mount -o nobrowse -t apfs "$partition" /Volumes/BS/
sudo kmutil install --volume-root /Volumes/BS --update-all
sudo bless --folder /Volumes/BS/System/Library/CoreServices --bootefi --create-snapshot
