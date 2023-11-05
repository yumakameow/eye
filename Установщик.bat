@echo off
setlocal

REM Set the Python version
set PYTHON_VERSION=3.11.0

REM Set the Python installation path
set PYTHON_PATH=C:\Python%PYTHON_VERSION%

REM Download and install Python
curl -o python.exe https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-amd64.exe
start /wait python.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0

REM Install required Python modules
pip install pyaesm colorama urllib3 random requests

REM Clean up downloaded files
del python.exe

echo Python and required modules installation completed.
pause
