from characters.monster import Monster
from characters.player import Player

def battle(p: Player, m: Monster):
    print(f'{m.name}과(와)의 전투를 시작합니다.\n{"-" * 50}')
    while True:
        p.attack_target(m)
        if m.is_alive() == False:
            p.gain_experience(m.level * 20)
            print("-" * 50)
            print("전투 승리")
            print("-" * 50)
            break
        m.attack_target(p)
        if p.is_alive() == False:
            print("-" * 50)
            print("전투 패배...")
            print("-" * 50)
            break