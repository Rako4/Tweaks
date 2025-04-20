@Echo Off
SetLocal EnableDelayedExpansion

REM Find The Network Adapter
For /f "Tokens=3*" %%a in ('Reg.exe Query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\NetworkCards" /k /v /f "Description" /s /e ^| FindStr /ri "REG_SZ"') Do (
    REM Find the corresponding registry key for the network adapter
    For /f %%g in ('Reg.exe Query "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}" /s /f "%%b" /d ^| FindStr /C:"HKEY"') Do (
        
        REM Disable ClkReq
        Reg.exe Add "%%g" /v "CLKREQ" /t REG_DWORD /d "0" /f
    )
)


