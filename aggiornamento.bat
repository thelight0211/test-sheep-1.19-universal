@echo off
cd /d "C:\Users\condr\Documents\Paradox Interactive\Hearts of Iron IV\mod\sheep universal 1.19"

echo ========================================
echo  Aggiornamento repo GitHub in corso...
echo ========================================
echo.

git add .
git status

echo.
set /p msg="Messaggio del commit (es. Fix, Update, ecc.): "

if "%msg%"=="" set msg=Update mod

git commit -m "%msg%"
git push origin main

echo.
echo ========================================
echo  Fatto!
echo ========================================
pause