Aden v9.6 ADMIN INPUT FIX

이 폴더의 main.py를 실행하세요.

수정 내용:
- 관리자 모드에서 9를 눌러 스테이지 입력창을 열었을 때,
  1~7 숫자가 워프 단축키로 먹히던 문제 수정
- 이제 입력창이 열린 상태에서는 숫자키가 전부 입력값으로만 들어갑니다.
- 예: 9 → 35 → Enter = 35스테이지 이동
- 입력창에서 Esc = 입력 취소
- 평상시 관리자 모드에서는 기존 F1~F7 / 1~7 워프 유지

실행:
python -m pip install pygame
python main.py

또는 run_game.bat 실행
