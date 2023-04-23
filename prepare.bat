git init
git submodule add https://github.com/ftk-modding/stripped-binaries Libs\stripped-binaries
dotnet restore

@echo off
IF '%ERRORLEVEL%'=='0' GOTO OK
exit

:OK
echo "FTKPlugin is ready!"
(goto) 2>nul & del "%~f0"