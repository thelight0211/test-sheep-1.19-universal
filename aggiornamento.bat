@echo off
:: Naviga automaticamente nella cartella della mod
cd /d "C:\Users\condr\Documents\Paradox Interactive\Hearts of Iron IV\mod\sheep universal 1.19"
echo Seleziono i file modificati...
git add .
:: Ti chiede cosa hai cambiato (premi Invio per lasciare il messaggio predefinito)
set /p msg="Inserisci il messaggio di commit (oppure premi Invio per lasciare 'Aggiornamento mod'): "
if "%msg%"=="" set msg=Aggiornamento mod
echo Salvo le modifiche locali...
git commit -m "%msg%"
echo Invio i file su GitHub...
git push origin main
echo.
echo Caricamento completato con successo!
pause