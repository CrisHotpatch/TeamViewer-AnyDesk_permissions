#!/bin/bash
 
#set -x

BASEDIR=${0%/*}

cd $BASEDIR

./tccplus add ScreenCapture com.teamviewer.TeamViewer

./tccplus add Accessibility com.teamviewer.TeamViewer

./tccplus add ScreenCapture com.philandro.anydesk

./tccplus add Accessibility com.philandro.anydesk

echo ""
echo "Liberando Permissões"
echo "--------------------"

sleep 1

killall TeamViewer

killall AnyDesk

open /Applications/TeamViewer.app 

open /Applications/AnyDesk.app 



sleep 2

clear
echo ""
echo "Permissões liberadas"
echo "--------------------"
