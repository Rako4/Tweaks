@echo off
set rwePath="C:\Program Files\RW-Everything\Rw.exe"

%rwePath% /Min /Nologo /Stdout /Command="WRMSR 0x63A 0x0 0000000000000000"
%rwePath% /Min /Nologo /Stdout /Command="WRMSR 0x642 0x0 0000000000000031"

pause
