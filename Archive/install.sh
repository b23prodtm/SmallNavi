#!/bin/bash
kext=AMD9500Controller
kexttofix="Kexts/${kext}.kext"
if [ ! -e LoadKextHookup.sh ]; then
    printf "Change directory to %s..\n" "$0"
    cd "$(dirname "$0")" || exit 1
    . "$0" "$*" && exit 0
fi
. libInstall.libshell
sleep 2
printf "[ %s ] PATCHED Kext installation\n" "$kext"
sleep 2
mkdir -pv /Library/Extensions-off
cp -fRv "$kexttofix" /Library/Extensions-off/.
chmod a+x LoadKextHookup.sh
cp -fv LoadKextHookup.sh /Library/LoginHook/.
cp -fv libInstall.libshell /Library/LoginHook/.
#Automate this with the following LoginHook that will get executed after the next reboot:
#with the following content:
defaults write com.apple.loginwindow LoginHook /Library/LoginHook/LoadKextHookup.sh

printf "[ %s ] Reboot to install the patched Kext\\n" "$kext"
sleep 2
