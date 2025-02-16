@echo off
for /f "tokens=*" %%i in ('where nvidia-smi') do set NVIDIA_SMI=%%i
if not defined NVIDIA_SMI (
    echo nvidia-smi.exe not found. Please ensure NVIDIA drivers are installed.
    pause
    exit /b 1
)
"%NVIDIA_SMI%" -ac 0,0
echo Clock policy has been reset to default settings.
pause