Aden v9.5 MAPFIX

이 폴더의 main.py를 실행하세요.

수정 내용:
- v9.4에서 일부 맵 줄의 오른쪽 빈 공간이 잘려 화면상 맵이 잘려 보이던 문제 수정
- 모든 level_*.txt를 직사각형 고정 폭으로 복구
- 각 맵 최소 폭을 60타일, 즉 1920px 이상으로 보정
- 모든 맵 포탈 O 존재 여부 재확인
- 기존 v9.4의 보스/아이템/이동 장애물/캐릭터 수정 유지

실행:
python -m pip install pygame
python main.py

또는 run_game.bat 실행

중요:
이전 v9.4 폴더 말고 이 Aden_v9_5_MAPFIX 폴더를 새로 압축 해제해서 실행하세요.
