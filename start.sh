#!/bin/sh

akai=$(aconnect -i | grep client.*MPK | cut -f2 -d" ")0

root=$PWD
cd $root/ext/Orac/Core/orac
puredata main.pd  &
sleep 1
aconnect $akai 128:0
aconnect 128:1 $akai
cd $root/ext/MEC/build/release/bin
./mec-app ../../../../Orac/macOS/MEC/osckontrol.json
