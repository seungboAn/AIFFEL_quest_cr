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