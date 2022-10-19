#!/usr/bin/env bash
kext=AMD9500Controller
#kextload "/Library/Extensions-off/${kext}.kext/"
#printf "Switch to GPU 1 (experimental)"
#pmset -a gpuswitch 1
. libInstall.libshell
printf "[ %s ] Install hook to S/L/E\n" "$kext"
chown -R root:wheel "/Library/Extensions-off/${kext}.kext"
chmod 644 "Library/Extensions-off/${kext}.kext/Contents/MacOS/*"
cp -frv "/Library/Extensions-off/${kext}.kext" /System/Library/Extensions/. || exit 0
printf "[ %s ] Success\n" "$kext"
sleep 2
rmfn /Library/LoginHook/LoadKextHookup.sh /Library/LoginHook/libInstall.libshell "/Library/Extensions-off/${kext}.kext/"
exit 0
