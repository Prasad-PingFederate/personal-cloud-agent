@echo off
title Personal Cloud Agent - Daily Sync
color 0B
echo ========================================================
echo   Syncing Personal Cloud Agent with Upstream Updates
echo   Account: Prasad-PingFederate (prasad.dammai94@gmail.com)
echo   Repo: personal-cloud-agent
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
echo   Sync Complete! Personal Cloud Agent is up to date.
echo ========================================================
pause
