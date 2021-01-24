#!/bin/sh

akai=20

root=$PWD
cd $root/ext/Orac/Core/orac
puredata main.pd ../../../../modules/control/knobs.pd &
sleep 1
aconnect $akai:0 128:0
aconnect 128:1 $akai:0
cd $root/ext/MEC/build/release/bin
./mec-app ../../../../Orac/macOS/MEC/osckontrol.json