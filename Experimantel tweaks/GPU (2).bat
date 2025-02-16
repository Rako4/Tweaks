@echo off
title Configure Registry Tweaks for Competitive Gaming
setlocal enabledelayedexpansion

:: Define settings for enabling
set "enableSettings[0]=ENABLE_FAST_LINK_TRAINING"
set "enableSettings[1]=enableAdaptiveSync"
set "enableSettings[2]=EnableGpuFirmware"
set "enableSettings[3]=ENABLE_MSA_OVER_MST"
set "enableSettings[4]=DP_KEEP_OPT_LINK_ALIVE"
set "enableSettings[5]=ENABLE_OCA_LOGGING"
set "enableSettings[6]=enableHdrBrightnessControl"
set "enableSettings[7]=ENABLE_FREESYNC"
set "enableSettings[8]=ENABLE_VSYNC"
set "enableSettings[9]=ENABLE_FRAME_LIMITING"
set "enableSettings[10]=ENABLE_GAMING_MODE"
set "enableSettings[11]=ENABLE_LOW_LATENCY_MODE"
set "enableSettings[12]=ENABLE_DSR"
set "enableSettings[13]=ENABLE_GSYNC"
set "enableSettings[14]=ENABLE_VR_MODE"
set "enableSettings[15]=ENABLE_HARDWARE_ACCELERATION"
set "enableSettings[16]=ENABLE_GPU_OVERCLOCKING"
set "enableSettings[17]=ENABLE_BANDWIDTH_OPTIMIZATION"
set "enableSettings[18]=ENABLE_ANTI_ALIASING"
set "enableSettings[19]=ENABLE_SHADOWS"
set "enableSettings[20]=ENABLE_TEARING_PREVENTION"
set "enableSettings[21]=ENABLE_DYNAMIC_RESOLUTION"
set "enableSettings[22]=ENABLE_GRAPHICS_OPTIMIZATION"
set "enableSettings[23]=ENABLE_NETWORK_ACCELERATION"
set "enableSettings[24]=ENABLE_MULTITHREADING"
set "enableSettings[25]=ENABLE_SFX_OPTIMIZATION"
set "enableSettings[26]=ENABLE_CPU_OVERCLOCKING"
set "enableSettings[27]=ENABLE_VIRTUALIZATION"
set "enableSettings[28]=ENABLE_HYPER_THREADING"
set "enableSettings[29]=ENABLE_PERFORMANCE_MONITORING"

:: Define settings for disabling
set "disableSettings[0]=ENABLE_AUDIO_BEYOND48K"
set "disableSettings[1]=enableSmartDimmer"
set "disableSettings[2]=DP_POWER_DOWN_PHY"
set "disableSettings[3]=enableVirtualRefreshOnMosaic"
set "disableSettings[4]=ENABLE_BACKGROUND_APP_REFRESH"
set "disableSettings[5]=ENABLE_POWER_SAVING_MODE"
set "disableSettings[6]=ENABLE_UNNECESSARY_ANIMATIONS"
set "disableSettings[7]=ENABLE_WINDOW_COMPOSITING"
set "disableSettings[8]=ENABLE_VIRTUAL_DESKTOPS"
set "disableSettings[9]=ENABLE_HARDWARE_DECODING"
set "disableSettings[10]=ENABLE_LOW_POWER_MODE"
set "disableSettings[11]=ENABLE_SCREEN_SAVER"
set "disableSettings[12]=ENABLE_BACKGROUND_UPDATES"
set "disableSettings[13]=ENABLE_AUTOMATIC_BACKUPS"
set "disableSettings[14]=ENABLE_THROTTLING"

:menu
cls
echo 1. Enable Best Settings for Competitive Gaming
echo 2. Disable Less Beneficial Settings
echo 3. Exit
echo.

set /p option="Choose an option: "
if "%option%"=="1" (
    call :enableSettings
) else if "%option%"=="2" (
    call :disableSettings
) else if "%option%"=="3" (
    echo Exiting...
    exit
) else (
    echo Invalid option. Please try again.
    pause
    goto menu
)

goto menu

:enableSettings
set "regPath=HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0001"

echo Enabling settings...
for /L %%i in (0,1,29) do (
    echo %%i. !enableSettings[%%i]!
)

set /p setting="Enter the number of the setting to enable (0-29): "
set "setting=%setting: =%"  :: Trim whitespace

if !setting! LSS 30 (
    reg add "!regPath!" /v "!enableSettings[%setting%]!" /t REG_DWORD /d 1 /f
    echo Setting enabled: !enableSettings[%setting%]!
) else (
    echo Invalid option. Please try again.
)
pause
exit /b

:disableSettings
set "regPath=HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0001"

echo Disabling settings...
for /L %%i in (0,1,14) do (
    echo %%i. !disableSettings[%%i]!
)

set /p setting="Enter the number of the setting to disable (0-14): "
set "setting=%setting: =%"  :: Trim whitespace

if !setting! LSS 15 (
    reg add "!regPath!" /v "!disableSettings[%setting%]!" /t REG_DWORD /d 0 /f
    echo Setting disabled: !disableSettings[%setting%]!
) else (
    echo Invalid option. Please try again.
)
pause
exit /b