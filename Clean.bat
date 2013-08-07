@echo off
ThirdParty\Premake4.exe --file=Empty.lua clean

del /f /Q /S "Projects"
del /f /Q /S "Binaries"
del /f /Q /S "qt_moc"
del /f /Q /S "qt_qrc"
del /f /Q /S "qt_ui"

