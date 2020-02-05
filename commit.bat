@ECHO OFF
ECHO Please enter a commit message:
SET /P _message=
git add *
git commit -m "%_message%"
git push
timeout /t 30