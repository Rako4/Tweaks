@echo off
cd C:\cpu-msr\cpu-msr

msr-cmd.exe -a write 0x642 0x00000000 0x0000001f
msr-cmd.exe -a write 0x63a 0x00000000 0x00000000

pause