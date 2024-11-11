from .character import Character

class Player(Character):
    def __init__(self, name):
        super().__init__(name)
        self.level = 1
        self.health = 100
        self.attack_power = 25
        self.defense_power = 5
        self.exp = 0

    def __str__(self):
        super().__str__()
        print(self.exp)

    def gain_experience(self, exp):
        self.exp += exp
        print(f'{self.name}이 {exp} exp를 얻었습니다.')
        while self.exp >= 50:
            self.level_up()
            self.exp -= 50

    def level_up(self):
            self.level += 1
            self.attack_power += 10
            self.defense_power += 5
            print(f'{self.name}의 레벨이 {self.level - 1}에서 {self.level}로 상승했습니다.')
