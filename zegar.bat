@echo off
:q
cls
title zegar
echo =====================
echo =  %time%      =
echo =====================
timeout /t 1 /NOBREAK >nul
goto q
