
powercfg.exe /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR IdleDisable 1 && powercfg.exe /setactive SCHEME_CURRENT

sc query dps
sc stop dps
sc config dps start=disabled

sc query SysMain
sc stop SysMain
sc config SysMain start=disabled

pause
