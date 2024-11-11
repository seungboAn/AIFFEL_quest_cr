import random
from datetime import datetime

class Account():
    account_count = 0

    def __init__(self, depositor, balance):
        self.bank_name = "SC은행"
        self.depositor = depositor
        self.balance = balance
        self.account_number = self.create_account_number()
        self.deposit_count = 0
        self.history = {"deposit": [], "withdraw": []}
        self.history_count = 0
        Account.account_count += 1

    def create_account_number(self) -> str:
        res = []
        for i in range(13):
            if i == 3 or i == 6:
                res.append('-')
            else:
                res.append(str(random.randint(0, 9)))
        return "".join(res)

    def display_info(self):
        print(f'은행이름: {self.bank_name}, 예금주: {self.depositor}, 계좌번호: {self.account_number}, 잔고: {self.balance:,}원')

    def get_account_num(self):
        print(f'생성된 계좌의 총 개수: {self.account_count}개')

    def deposit(self, deposit_amount):
        if deposit_amount >= 1:
            self.balance += deposit_amount
            self.deposit_count += 1
            print(f'{deposit_amount}원이 입금되었습니다.')
            self.history_count += 1
            now = datetime.now()
            self.history["deposit"].append(f'{now.month}/{now.day} {self.history_count}회: 입금 금액: {deposit_amount}원 잔액: {self.balance}원')
            if self.deposit_count == 5:
                self.apply_interest()
        else:
            print("입금은 최소 1원 이상만 가능합니다.")

    def withdraw(self, withdraw_amount):
        tmp = self.balance - withdraw_amount
        if tmp >= 0:
            self.balance -= withdraw_amount
            print(f'출금 후 잔액: {self.balance}')
            self.history_count += 1
            now = datetime.now()
            self.history["withdraw"].append(f'{now.month}/{now.day} {self.history_count}회: 출금 금액: {withdraw_amount}원 잔액: {self.balance}원')
        else:
            print("출금은 계좌 잔고 이상으로 출금할 수 없습니다.")

    def apply_interest(self):
        interest = int(self.balance * 0.01)
        self.balance += interest
        self.history_count += 1
        now = datetime.now()
        self.history["deposit"].append(f'{now.month}/{now.day} {self.history_count}회: 이자지급 금액: {interest}원 잔액: {self.balance}원')
        print(f'{interest}원의 이자가 입금되었습니다.')
        self.deposit_count = 0

    def deposit_history(self):
        for history in self.history["deposit"]:
            print(history)
    def withdraw_history(self):
        for history in self.history["withdraw"]:
            print(history)