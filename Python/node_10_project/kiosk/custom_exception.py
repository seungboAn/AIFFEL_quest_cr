# 주문 번호 예외 처리
# 1 ~ menu_length을 벗어난 메뉴 번호를 입력한 경우 발생하는 에러
class OrderNumberError(Exception):
    def __init__(self, menu_length):
        self.menu_length = menu_length
        super().__init__(f'잘못된 음료 번호입니다. 1 ~ {self.menu_length}까지 입력해 주세요.')

# 온도 선택 예외 처리
# ICE : 1, HOT : 2 외에 다른 번호를 입력한 경우 발생하는 에러
class TempError(Exception):
    def __init__(self):
        super().__init__('잘못된 옵션입니다. 1 ~ 2 중에서 입력해 주세요.')

# 추가 주문 선택 예외 처리
# 지불 : 1, 추가 주문 : 2 외에 다른 번호를 입력한 경우 발생하는 에러
class PayOrAddtionalOrderError(Exception):
    def __init__(self):
        super().__init__('잘못된 옵션입니다. 1 ~ 2 중에서 입력해 주세요.')

# 결제 방법 선택 예외 처리
# 현금 : 'cash' 1, 카드 : 'card', 2 외에 다른 번호를 입력한 경우 발생하는 에러
class PaymentError(Exception):
    def __init__(self):
        super().__init__('잘못된 옵션입니다. 1 ~ 2 중에서 입력해 주세요.')