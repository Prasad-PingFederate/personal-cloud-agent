@echo off
title Xiryn Daily Sync - Prasad-PingFederate
color 0B
echo ========================================================
echo   Syncing Xiryn with Latest Upstream Updates
echo   Account: Prasad-PingFederate (prasad.dammai94@gmail.com)
echo ========================================================
echo.
cd /d "%~dp0"
echo [1/3] Fetching upstream changes...
git fetch upstream

echo [2/3] Merging into main branch...
git checkout main
git merge upstream/main --no-edit

echo [3/3] Pushing to your personal GitHub repo...
git push origin main

echo.
echo ========================================================
echo   Sync Complete! Your personal cloud agent is up to date.
echo ========================================================
pause
