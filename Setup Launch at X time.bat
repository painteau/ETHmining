@echo off > NUL
cls
echo 1. Install "launching mining at X time"
echo 2. Remove "launching mining at X time"
set /p iid=Enter your choice and press Enter to validate : 
cls
IF %iid%==1 (GOTO install)
IF %iid%==2 (GOTO uninstall)
GOTO end

:install
echo Choose your time for automatic launch (24:00 format, ex : 02:00 for 2AM or 14:00 for 2PM)
set /p tiime=Enter your choice and press Enter to validate : 
SCHTASKS /CREATE /SC DAILY /TN "LaunchMining" /TR "C:\mining\GOGO.bat" /ST %tiime%
GOTO end

:uninstall
cls
SCHTASKS /DELETE /TN "LaunchMining"
GOTO end

:end
pause
