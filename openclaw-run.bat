@echo off
title OpenClaw Launcher
cd /d E:\admin\openclaw-web
echo Starting OpenClaw Gateway...
start "OpenClaw Gateway" cmd /k "cd /d E:\admin\openclaw-web && node openclaw.mjs gateway run"
echo Waiting for Gateway to start...
timeout /t 5 /nobreak > nul
start "" "http://127.0.0.1:18789/"
pause
