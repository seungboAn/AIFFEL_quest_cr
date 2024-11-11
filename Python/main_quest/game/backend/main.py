# Q3. battle 함수 만들기
# battle 함수
# Player 인스턴스와  Monster 인스턴스를 인수로 받아 둘 중 하나의 체력이 0 이하가 될 때까지 공격을 주고 받는 함수
# 만약 Player 인스턴스가 살아남았다면 
# Player 인스턴스에 (몬스터 레벨 * 20)만큼의 경험치를 추가
# player의 레벨업 메서드 호출
# ‘전투 승리!’를 출력
# Player 인스턴스가 살아남지 못했을 경우
#  ‘전투 패배..’를 출력하기

# Q4. main 함수 만들기
# 몬스터의 이름, 레벨이 매핑된 딕셔너리 정의하기
# monster_dict = {‘슬라임’: 1, ‘고블린’: 2, ‘오크’: 3}
# 사용자로부터 이름을 입력받아 Player 인스턴스 생성하기
# 몬스터 딕셔너리로부터 Monster 인스턴스 생성하기
# 생성된 Monster 인스턴스와 Player 인스턴스가 battle 함수를 통해 전투
# player는 생성된 몬스터 3마리(슬라임, 고블린, 오크)와 모두 전투해야함
# 전투 도중에 Player가 사망하면 이후 전투를 진행하지 않고 ‘게임오버’ 출력하고 종료	

# 자동사냥 RPG 게임 만들기: 2점
# Player와 Monster 클래스를 완성 ->	1점
# battle 함수와 main 함수 완성	  -> 	1점

from characters.monster import Monster
from characters.player import Player
import actions.action as action

def main():
    player = Player('용사')
    monster_dict = {'슬라임': 1, '고블린': 2, '오크': 3}
    monsters = []
    for key, value in monster_dict.items():
        monsters.append(Monster(key, value))
    for monster in monsters:
        action.battle(player, monster)

if __name__ == "__main__":
    main()