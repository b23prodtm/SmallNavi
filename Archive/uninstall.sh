#!/bin/bash
kext=AMD9500Controller
kexttofix="Kexts/orig/${kext}.kext"
if [ ! -e LoadKextHookup.sh ]; then
    printf "Change directory to %s..\n" "$0"
    cd "$(dirname "$0")" || exit 1
    . "$0" "$*" && exit 0
fi
. libInstall.libshell
sleep 2
printf "[ %s ] Patched Kext uninstallation\n" "$kext"
sleep 2
mkdir -pv /Library/Extensions-off
cp -fRv "$kexttofix" /Library/Extensions-off/.
chmod a+x LoadKextHookup.sh
cp -fv LoadKextHookup.sh /Library/LoginHook/.
cp -fv libInstall.libshell /Library/LoginHook/.
#Automate this with the following LoginHook that will get executed after the next reboot:
#with the following content:
defaults delete com.apple.loginwindow LoginHook

printf "[ %s ] Reboot MacOS to reload the original kext in S/L/E\n" "$kext"
sleep 2
