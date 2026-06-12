Aden's Needle Trial v9.1 - Character Hotfix
===========================================

v9.1 수정 사항
--------------
- 실행 중 발생하던 NameError: name 'BreakableBox' is not defined 오류 수정
- v9 캐릭터 업그레이드 작업 중 빠졌던 BreakableBox / ItemPickup 클래스 정의 복구
- Q 상자 로딩, 상자 업데이트, 아이템 드롭 구조를 다시 연결
- 관리자 모드 캐릭터 스킨 적용 유지
- 기본 aden 고급 애니메이션 유지
- main.py 컴파일 확인 완료

중요
----
기존 v9 폴더에서 실행하지 말고, 이 v9.1 zip을 새 폴더에 압축 해제한 뒤 실행하세요.

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


v9.2 Pixel Character Fix
------------------------
- Fixed player animation logic so draw() always receives a pygame Surface instead of a frame list.
- Replaced the broken character art with simpler, maintainable pixel-art sprites.
- Admin mode character now uses a clean dot-style design inspired by the provided masked selfie: black hair, white mask, dark jacket, backpack.
- Default aden character now uses a clean dot-style design inspired by the earlier aden look: black hair, white top, beige pants, white shoes.
- Added smoother multi-frame pixel animations for idle / run / jump / fall / dash / shoot.
