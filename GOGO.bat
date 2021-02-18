@echo off
:start

:: ON RECUPERE LE NOM DU PC POUR IDENTIFIER SUR CRUXPOOL
SET _result=%computername:~0,8%


:: ON CHECK SI LE PROGRAMME EST DEJA LANCE
tasklist /FI "IMAGENAME eq PhoenixMiner.exe" 2>NUL | find /I /N "PhoenixMiner.exe">NUL
if "%ERRORLEVEL%"=="0" GOTO end

:notrunning

:: EXEMPLE POUR CRUXPOOL (enlever :: pour activer le bouzin et changer MONIDENTIFIANTCRUXPOOL )
::c:\mining\PhoenixMiner.exe -pool eth.cruxpool.com:5555 -wal MONIDENTIFIANTCRUXPOOL -worker %_result% -coin eth

:: EXEMPLE POUR BINANCE (enlever :: pour activer le bouzin et changer NOMDUCOMPTEDEMINAGE)
::c:\mining\PhoenixMiner.exe -pool stratum+tcp://ethash.poolbinance.com:1800 -pool2 stratum+tcp://ethash.poolbinance.com:25 -wal NOMDUCOMPTEDEMINAGE.1

:: ON REBOUCLE LE PROGRAMME EN CAS DE PROBLEME
GOTO start

:end
pause
