@echo off
for /F %%a in ('echo prompt $E ^| cmd') do (
  set "ESC=%%a"
)
SETLOCAL EnableDelayedExpansion
set /p dir="enter folder path (WARNING if enterd incorrectly, a repository will be created for this directory): "
cd %dir%
echo:
git init
echo:
git add .
echo:
git status
echo:
git commit -m "first commit"
echo:
echo !ESC![92mDone!ESC![0m
echo:
pause