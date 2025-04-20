@echo off

reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v WindowedGsyncGeforceFlag /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v FrameRateMin /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v IgnoreDisplayChangeDuration /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v LingerInterval /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v LicenseInterval /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v RestrictedNvcplUIMode /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v DisableSpecificPopups /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v DisableExpirationPopups /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v HideXGpuTrayIcon /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v ShowTrayIcon /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v HideBalloonNotification /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v PerformanceState /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v Gc6State /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v FrameDisplayBaseNegOffsetNS /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v FrameDisplayResDivValue /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v IgnoreNodeLocked /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v IgnoreSP /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v DontAskAgain /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM\Schedule" /v EnableForceIgpuDgpuFromUI /f

taskkill /f /im dwm.exe >nul 2>&1
timeout 1 >nul
start "" "dwm.exe"
pause