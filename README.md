# 터미널 주크박스

오늘의 나를 조금 더 따뜻하게 바라보게 해주는, 아주 작은 터미널 프로그램입니다.
문장 하나, 음악 하나로 마음의 속도를 잠깐 늦추는 시간을 만들고 싶었습니다.

배경음악은 제가 고등학교 그리고 성인 시절에 작곡했던 피아노 자작곡들입니다
2022.02.07-> 이게 먼저 시작할 텐데 
곡이름은 walts for you 라는 곡으로
여기서 you는 제 자신을 의미하며 쓴 곡입니다 (자세한 설명은 메일 주세요 오그라 들어요)

두번째 곡근 2019.0322라는 파일로 되어있습니다
이건 솔직하게 말하겠습니다
전 여자친구에게 잘보이기 위해 만들었던 노래로
그 당시에는 진짜 너무 좋아했었나 봅니다 (자세한 설명은 메일로....)

---

## 어떤 프로그램인가요?

- `for_you.py`의 주석 문장들을 터미널에 한 줄씩 출력합니다.
- 같은 폴더의 mp3를 찾아 배경음으로 재생합니다.
- 문장 간 출력 간격은 3초입니다.
- 마지막 감성 블록에는 강조 색상 규칙이 적용됩니다.

---

## 빠른 실행 (원클릭)

운영체제에 맞는 실행 파일을 더블클릭하면 됩니다.

- macOS: `터미널_주크박스.command`
- Linux: `터미널_주크박스.sh`
- Windows: `터미널_주크박스.bat`

처음 실행 시 필요한 패키지는 자동으로 설치됩니다.

---

## 수동 설치가 필요한 경우

### macOS / Linux

```bash
cd /Users/baegjunhyeon/감성
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
python for_you.py
```

### Windows

```bat
cd /d C:\Users\baegjunhyeon\감성
python -m venv .venv
.venv\Scripts\activate
python -m pip install -r requirements.txt
python for_you.py
```

---

## Python 없는 사용자에게 전달하기 (배포용)

상대방 PC에 Python이 없어도 실행되게 하려면,
각 운영체제에서 실행파일을 빌드한 뒤 전달하면 됩니다.

- macOS 빌드: `build_macos.command` → `dist/terminal_jukebox`
- Linux 빌드: `bash build_linux.sh` → `dist/terminal_jukebox`
- Windows 빌드: `build_windows.bat` → `dist\terminal_jukebox.exe`

> 주의: macOS에서 만든 파일은 macOS에서만, Windows에서 만든 파일은 Windows에서만 실행됩니다.

---

## 파일 구성

- `for_you.py` : 주크박스 본체
- `requirements.txt` : 실행 의존성 (`pygame-ce`)
- `requirements-build.txt` : 빌드 의존성 (`pyinstaller`, `pygame-ce`)
- `터미널_주크박스.command` / `터미널_주크박스.sh` / `터미널_주크박스.bat` : 원클릭 실행
- `build_macos.command` / `build_linux.sh` / `build_windows.bat` : 배포 빌드
- `A Letter to My Shining Name.mp3` : 배경음 파일

---

## 마지막 한 문장

조급한 날에도, 확신이 없는 날에도,
오늘을 버텨낸 당신의 이름은 충분히 빛납니다.

## 문의
fhzk1022@naver.com
or
insta = 031__022 (언더바 두개에용)


