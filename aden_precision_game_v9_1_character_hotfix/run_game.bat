@echo off
title Aden's Needle Trial v8
py -m pip install pygame
py main.py
if exist error_log.txt (
    echo.
    echo error_log.txt was created. Please open it to see the crash details.
)
pause
