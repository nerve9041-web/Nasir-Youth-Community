@echo off
title Nasir Youth Community — News, History & Memory Archive
echo =====================================================================
echo Starting Nasir Youth Community Website Archive...
echo =====================================================================
cd /d "%~dp0client"
if not exist "node_modules" (
    echo Installing dependencies, please wait a moment...
    call npm.cmd install
)
echo Opening http://localhost:3000 in your browser...
start http://localhost:3000
echo.
echo Running local web server. Keep this window open while browsing.
echo Press Ctrl+C in this window when you wish to stop the server.
echo.
call npx.cmd vite preview --port 3000
pause
