# Monster 클래스
# Character를 상속 받기
# 몬스터의 레벨에 비례하는 체력, 공격력, 방어력 초기화하기
# 체력: 10~30 사이의 랜덤한 정수 * 레벨
# 공격력: 5~20 사이의 랜덤한 정수 * 레벨
# 방어력: 1~5 사이의 랜덤한 정수 * 레벨

import random
from .character import Character

class Monster(Character):
    def __init__(self, name, level):
        super().__init__(name)
        self.level = level
        self.health = random.randint(10, 30) * self.level
        self.attack_power = random.randint(5, 20) * self.level
        self.defense_power = random.randint(1, 5) * self.level

    def __str__(self):
        super().__str__()