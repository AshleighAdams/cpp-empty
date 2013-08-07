#!/bin/bash
./ThirdParty/Premake4.elf --qt-shared --file=Empty.lua clean
rm -rf ./Projects
rm -rf ./Binaries
rm -r ./*~
