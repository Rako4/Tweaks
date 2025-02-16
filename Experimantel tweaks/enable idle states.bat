@echo off
powercfg.exe /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR IdleDisable 0
powercfg.exe /setactive SCHEME_CURRENT
exit
