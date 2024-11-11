from characters.monster import Monster
from characters.player import Player
import actions.action as action

def main():
    user_input = input("플레이어의 이름을 입력해 주세요: ")
    player = Player(user_input)
    monster_dict = {'슬라임': 1, '고블린': 2, '오크': 3}
    monsters = []
    for key, value in monster_dict.items():
        monsters.append(Monster(key, value))
    for monster in monsters:
        action.battle(player, monster)

if __name__ == "__main__":
    main()