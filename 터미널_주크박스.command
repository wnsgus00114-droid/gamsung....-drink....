#!/bin/zsh
cd "$(dirname "$0")"

if [ ! -x ".venv/bin/python3" ]; then
	echo "가상환경(.venv) 생성 중..."
	python3 -m venv .venv
fi

if ! .venv/bin/python3 -c "import pygame" >/dev/null 2>&1; then
	echo "pygame 자동 설치를 시작합니다..."
	.venv/bin/python3 -m pip install -r requirements.txt
fi

.venv/bin/python3 for_you.py
