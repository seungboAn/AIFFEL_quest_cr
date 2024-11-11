import random

class Character():
    def __init__(self, name):
        self.name = name
        self.level = 1
        self.health = 0
        self.attack_power = 0
        self.defense_power = 0

    def __str__(self):
        print(self.name)
        print(self.level)
        print(self.health)
        print(self.attack_power)
        print(self.defense_power)

    def take_damage(self, attack_power):
        dmg = attack_power - self.defense_power
        if dmg > 0:
            tmp_health = self.health - dmg
            if tmp_health > 0:
                self.health = tmp_health
            else:
                self.health = 0
            print(f'{self.name}이 {dmg}만큼 피해를 받았습니다.\n{self.name}의 체력: {self.health}')
        else:
            print(f'{self.name}이 공격을 방어했습니다.\n{self.name}의 체력: {self.health}')

    def attack_target(self, instance):
        dmg = random.randint(1, self.attack_power)
        print(f'{self.name}이 {instance.name}에게 {dmg}만큼 공격했습니다.')
        instance.take_damage(dmg)

    def is_alive(self) -> bool:
        return True if self.health > 0 else False