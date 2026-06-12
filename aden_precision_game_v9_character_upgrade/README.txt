Aden's Needle Trial v8.2 - Admin Shoot Fix
==========================================

v8.2 수정 사항
--------------
- 관리자 모드에서 공격 시 발생하던 오류 수정
- 오류 원인:
  Player.request_shoot() 함수가 laser/rainbow 키워드 인자를 받지 못하는 상태였음
- 수정:
  request_shoot(self, shots, laser=False, rainbow=False) 형태로 변경
  PlayerShot도 laser/rainbow 발사체를 처리하도록 정리
- 관리자 모드 Jiho_Park에서 무지개 레이저 공격 정상 동작

실행
----
python -m pip install pygame
python main.py

또는 run_game.bat 실행


v9 Character Upgrade
--------------------
- Admin mode now uses a new high-detail character inspired by the provided photo: black hair, white mask, black jacket, backpack styling.
- Default aden character upgraded with smoother multi-frame idle/run/jump/fall/dash/shoot animations.
- Admin and default characters both use higher-frame animation sets for more natural 2D side-scroller motion.
