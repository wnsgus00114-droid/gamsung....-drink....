@echo off
cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
	echo 가상환경(.venv) 생성 중...
	python -m venv .venv
)

.venv\Scripts\python.exe -c "import pygame" >nul 2>&1
if errorlevel 1 (
	echo pygame 자동 설치를 시작합니다...
	.venv\Scripts\python.exe -m pip install -r requirements.txt
)

.venv\Scripts\python.exe for_you.py
pause
