@echo off > NUL
cls
echo 1. Install "launching mining at Windows Start"
echo 2. Remove "launching mining at Windows Start"
set /p id=Enter your choice and press Enter to validate :

IF %id%==1 (
  DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\PhoenixMiner.lnk"
  cls
  copy "PhoenixMiner.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\"
) ELSE IF %id%==2 (
  DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\PhoenixMiner.lnk"
)
pause
