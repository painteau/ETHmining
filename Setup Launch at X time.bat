@echo off > NUL
cls
echo 1. Install "launching mining at X time"
echo 2. Remove "launching mining at X time"
set /p id=Enter your choice and press Enter to validate :
cls
IF %id%==1 (
echo Choose your time for automatic launch (24:00 format, ex : 02:00 for 2AM or 14:00 for 2PM)
set /p tiime=Enter your choice and press Enter to validate :
SCHTASKS /CREATE /SC DAILY /TN "LaunchMining" /TR "C:\mining\GOGO.bat" /ST %tiime%

) ELSE IF %id%==2 (
SCHTASKS /DELETE /TN "LaunchMining"
)
pause




