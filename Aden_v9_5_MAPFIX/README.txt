Aden v9.5 MAPFIX
=================

수정 사항
---------
- 맵이 화면상에서 잘려 보이던 문제 수정
- 원인: 맵 자동 배치 과정에서 각 줄 끝의 빈 공간이 제거되어 월드 폭이 줄어듦
- 해결: 모든 level_*.txt를 직사각형 고정 폭으로 보정
- 각 맵 최소 폭을 60타일 이상으로 유지
- 포탈 누락 여부 재검사 완료
- v9.4의 Q 상자, R/T 이동 장애물, 보스 수정, 도트 캐릭터 수정 유지

Aden v9.4 DESIGN STABLE
=======================

이번 안정화/디자인 업데이트
--------------------------
1. 추가 오류 가능성 정적 점검
   - HumanBoss 생성자 불일치 오류 수정 상태 확인
   - BreakableBox / ItemPickup / RoamingSpikeWall 등 맵 심볼 기반 클래스 존재 확인
   - PLAYER_ASSETS 리스트가 그대로 draw()에 들어가던 애니메이션 오류 제거 확인
   - main.py 컴파일 확인

2. 관리자 모드 체크포인트 확인
   - 코드상 체크포인트 처리는 관리자 모드 피해 판정보다 먼저 실행됩니다.
   - 따라서 관리자 모드에서도 체크포인트 접촉 자체는 작동하는 구조가 맞습니다.
   - 다만 관리자 모드는 피격/사망이 없어서 체크포인트의 체감 필요성이 낮습니다.

3. 아이템 상자 배치 개선
   - 보스전/고난도 구간에 Q 상자를 추가 배치했습니다.
   - 주요 배치 강화 스테이지:
     21, 35, 43, 49, 51 보스 구간
     30 이후 고난도 구간 일부
   - 보스전 전에 방어막/레이저/회복/레벨업 아이템을 얻을 수 있는 가능성이 높아졌습니다.

4. 새 장애물 추가
   - R: 맵 좌우 끝까지 왕복하는 대형 가시벽
   - T: 맵 위아래 끝까지 왕복하는 대형 가시벽
   - 기존 늘어나는 가시와 다르게, 맵을 가로지르며 이동하는 장애물입니다.
   - 배치 스테이지:
     16, 24, 28, 32, 36, 39, 42, 45, 48, 50

5. 맵 점검
   - 모든 level_*.txt의 포탈 O 존재 여부 확인 완료
   - 포탈 누락 맵 없음

실행
----
python -m pip install pygame
python main.py

주의
----
기존 폴더에 덮어쓰기하지 말고, 이 Aden_v9_4_DESIGN_STABLE 폴더를 새로 압축 해제해서 실행하세요.

Aden v9.3 BOSSFIX

수정 사항:
- 34스테이지 클리어 후 35스테이지 진입 시 발생하던 HumanBoss 생성자 오류 수정
- HumanBoss가 현재 코드 구조에 맞게 Enemy를 직접 상속하도록 변경
- main.py 컴파일 확인 완료

중요:
이전 v9.2 폴더가 아니라 이 Aden_v9_3_BOSSFIX 폴더의 main.py를 실행하세요.

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
