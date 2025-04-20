@echo off

reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "DXGL_FRAME_LATENCY_WAITABLE_OBJECT" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "DXGI_ALLOW_TEARING" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "DXGI_SWAPCHAIN_FLUSH" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "GPU_MAX_ALLOC_PERCENT" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "GPU_SINGLE_ALLOC_PERCENT" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "MOUSE_RAW_INPUT" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "KEYBOARD_FAST_INIT" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "DX12_AGGRESSIVE_PIPELINE" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "DX12_FORCE_WARP" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "GPU_SYNC_OBJECTS" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\mouclass" /v "PollingInterval" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\mouhid" /v "MaximumPortsServiced" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableHwCursor" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "DisableDWM" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "UsePolledSwapChain" /f >nul 2>&1

pause