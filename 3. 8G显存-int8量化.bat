@echo off

set GIT=git.exe
set PYTHON=python.exe

%PYTHON% webui.py --precision int8 --model-path ".\\model\\chatglm-6b-v1_1"

pause
exit /b
