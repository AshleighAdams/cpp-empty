#!/bin/bash

#make sure libqt4-devel or libqt4-dev libqt4-dev-bin are in stalled

./ThirdParty/Premake4.elf --qt-shared --file=Empty.lua clean
./ThirdParty/Premake4.elf --qt-shared --file=Empty.lua gmake
