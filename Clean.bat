@echo off
ThirdParty\Premake4.exe --file=Empty.lua clean

del /f /Q /S "Projects"
del /f /Q /S "Binaries"

