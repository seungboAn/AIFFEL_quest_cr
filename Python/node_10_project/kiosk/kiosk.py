from custom_exception import OrderNumberError, TempError, PayOrAddtionalOrderError, PaymentError

class Kiosk:
    def __init__(self):
        self.menu = ['americano', 'latte', 'mocha', 'yuza_tea', 'green_tea', 'choco_latte']
        self.price = [2000, 3000, 3000, 2500, 2500, 3000]
        self.order = []
        self.sum_price = 0
        self.payment = {
            'cash': ['cash', '1'],
            'card': ['card', '2'],
        }

    def menu_print(self):
        for i in range(len(self.menu)):
            print(f'{i + 1} {self.menu[i]}: {self.price[i]}원')

    def menu_select(self):
        menu, price = self.menu, self.price
        temp, flag, order_select = "", "ready", { "menu_number": None, "temp": None }

        while True:
            try:
                if flag == "ready":
                    menu_number = input("음료의 번호를 입력해 주세요: ")
                    if menu_number.isdigit() and 1 <= int(menu_number) and int(menu_number) <= len(menu):
                        order_select["menu_number"] = int(menu_number) - 1
                        flag = "temp"
                    else:
                        raise OrderNumberError()
                if flag == "temp":
                    temp = input("ICE는 1번 HOT은 2번을 선택해 주세요: ")
                    if temp.isdigit() and (temp == "1" or temp == "2"):
                        order_select["temp"] = "ICE" if temp == "1" else "HOT"
                        self.order.append(f'{order_select["temp"]} {menu[order_select["menu_number"]]} : {price[order_select["menu_number"]]}원')
                        self.sum_price += price[order_select["menu_number"]]
                        
                        # 사용자가 추가한 현재 주문 정보 출력
                        print(self.order[-1])
                        flag = "pay"
                    else:
                        raise TempError()
                if flag == "pay":
                    answer = input("추가 주문은 음료 번호를, 지불은 0을 누르세요: ")
                    if answer.isdigit():
                        if int(answer) == 0:
                            print(self.order)
                            break
                        elif 1 <= int(answer) and int(answer) <= len(self.menu):
                            order_select["menu_number"] = int(answer) - 1
                            flag = "temp"
                        else:
                            PayOrAddtionalOrderError()
                    else:
                        raise PayOrAddtionalOrderError()
            except OrderNumberError as e:
                print(e)
            except TempError as e:
                print(e)
            except PayOrAddtionalOrderError as e:
                print(e)
            except Exception as e:
                print(e)

    def pay(self):
        while True:
            try:
                pay_method = input('결제 방법을 선택해 주세요: ')
                if pay_method not in self.payment['cash'] and pay_method not in self.payment['card']:
                    raise PaymentError
            except PaymentError as e:
                print(e)
            else:
                if pay_method in self.payment['cash']:
                    print('직원을 호출하겠습니다.')
                if pay_method in self.payment['card']:
                    print('IC칩 방향에 맞게 카드를 꽂아주세요.')
                break

    def table(self):
        print('⟝' + '-' * 30 + '⟞')
        for i in range(5):
            print('|' + ' ' * 31 + '|')
        for i in range(len(self.order)):
            print(self.order[i])
        print('합계 금액 :', self.sum_price, '원')
        for i in range(5):
            print('|' + ' ' * 31+ '|')
        print('⟝' + '-' * 30 + '⟞')