@echo off
:start
cls
:: ON RECUPERE LES 8 PREMIERS CARACTERES DU NOM DU PC POUR L'IDENTIFIER SUR CRUXPOOL
SET rig_name=%computername:~0,8%

:: ON CHECK SI LE PROGRAMME EST DEJA LANCE : SI OUI GO TO END
::tasklist /FI "IMAGENAME eq PhoenixMiner.exe" 2>NUL | find /I /N "PhoenixMiner.exe">NUL
::tasklist /FI "IMAGENAME eq Gminer.exe" 2>NUL | find /I /N "Gminer.exe">NUL
if "%ERRORLEVEL%"=="0" GOTO end

:notrunning

:: EXEMPLE POUR CRUXPOOL (enlever les :: pour activer le bouzin et changer MONIDENTIFIANTCRUXPOOL par l'identifiant Cruxpool )
::c:\mining\PhoenixMiner.exe -pool eth.cruxpool.com:5555 -wal MONIDENTIFIANTCRUXPOOL -worker %rig_name% -coin eth
::c:\mining\Gminer.exe --algo ethash --server eth.cruxpool.com:5555 --user MONIDENTIFIANTCRUXPOOL

:: EXEMPLE POUR BINANCE (enlever les :: pour activer le bouzin et changer NOMDUCOMPTEDEMINAGE.1 par le nom compte de minage et son identifiant)
::c:\mining\PhoenixMiner.exe -pool stratum+tcp://ethash.poolbinance.com:1800 -pool2 stratum+tcp://ethash.poolbinance.com:25 -wal NOMDUCOMPTEDEMINAGE.1
::c:\mining\Gminer.exe --algo ethash --server stratum+tcp://ethash.poolbinance.com:1800 --user NOMDUCOMPTEDEMINAGE.%rig_name%

:: ON REBOUCLE LE PROGRAMME EN CAS DE QUIT DU PROGRAMME
echo RESTARTING
GOTO start

:end
