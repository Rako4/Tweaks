@echo off
REM Set the Capabilities registry value to 7E066

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Processor" /v Capabilities /t REG_DWORD /d 0x7E066 /f

echo Registry value 'Capabilities' set to 7E066 successfully.
pause