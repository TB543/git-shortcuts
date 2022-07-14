@echo off
for /F %%a in ('echo prompt $E ^| cmd') do (
  set "ESC=%%a"
)
SETLOCAL EnableDelayedExpansion
set /p dir="enter folder path (WARNING if enterd incorrectly, this directory will remove its repository): "
cd %dir%
rmdir /s .git
echo !ESC![92mDone!ESC![0m
echo:
pause