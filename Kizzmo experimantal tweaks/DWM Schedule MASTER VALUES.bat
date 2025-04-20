@echo off

reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v WindowedGsyncGeforceFlag /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v FrameRateMin /t REG_DWORD /d 0xFFFFFFFF /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v IgnoreDisplayChangeDuration /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v LingerInterval /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v LicenseInterval /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v RestrictedNvcplUIMode /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v DisableSpecificPopups /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v DisableExpirationPopups /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v EnableForceIgpuDgpuFromUI /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v HideXGpuTrayIcon /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v ShowTrayIcon /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v HideBalloonNotification /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v PerformanceState /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v Gc6State /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v FrameDisplayBaseNegOffsetNS /t REG_DWORD /d 0xFFE17B80 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v FrameDisplayResDivValue /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v IgnoreNodeLocked /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v IgnoreSP /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v DontAskAgain /t REG_DWORD /d 1 /f

taskkill /f /im dwm.exe >nul 2>&1
timeout 1 >nul
start "" "dwm.exe"
pause