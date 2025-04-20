@echo off
:: Grant administrative privileges
if "%1"=="" (
    echo Requesting administrative privileges...
    powershell -command "Start-Process '%0' -ArgumentList 'elevated' -Verb runAs"
    exit
)

:: Menu to choose action
:Menu
cls
echo Choose an option:
echo 1. Disable Write Cache Buffer
echo 2. Enable Write Cache Buffer (Default)
set /p choice="Enter the number corresponding to your choice: "

if "%choice%"=="1" (
    goto DisableWriteCache
) else if "%choice%"=="2" (
    goto EnableWriteCache
) else (
    echo Invalid choice. Exiting...
    goto End
)

:: Function to disable write cache buffer
:DisableWriteCache
echo "Disable Write Cache Buffer"
for /f "Delims=" %%k in ('Reg.exe Query hklm\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
  echo Reg.exe add "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /t reg_dword /d 0 /f
  echo Reg.exe add "%%k\Device Parameters\Disk" /v CacheIsPowerProtected /t reg_dword /d 0 /f
  Reg.exe add "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /t reg_dword /d 0 /f
  Reg.exe add "%%k\Device Parameters\Disk" /v CacheIsPowerProtected /t reg_dword /d 0 /f
)
echo "Write Cache Buffer disabled successfully."
goto End

:: Function to enable write cache buffer
:EnableWriteCache
echo "Enable Write Cache Buffer"
for /f "Delims=" %%k in ('Reg.exe Query hklm\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
  echo Reg.exe delete "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /f
  echo Reg.exe delete "%%k\Device Parameters\Disk" /v CacheIsPowerProtected /f
  Reg.exe delete "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /f
  Reg.exe delete "%%k\Device Parameters\Disk" /v CacheIsPowerProtected /f
)
echo "Write Cache Buffer enabled successfully."
goto End

:End
pause
exit
