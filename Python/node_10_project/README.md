## 프로젝트 설명
Python을 활용해 사각형 넓이 계산기와 키오스크 프로그램을 구현하는 프로젝트입니다. 두 모듈로 구성되어 있으며, `square` 모듈은 사각형의 넓이를 계산하는 기능을, `kiosk` 모듈은 키오스크 기능을 제공합니다.

---

### 1. 사각형 넓이 계산기: `square`

`square` 모듈은 직사각형, 평행사변형, 사다리꼴의 넓이를 계산할 수 있는 `Square` 클래스를 제공합니다.

- **method**:
  - rect() : 직사각형
  - par() : 평행사변형
  - trape() : 사다리꼴

#### 사용 예시
```bash
python main.py
```
```python
# main.py

from square import Square

if __name__ == "__main__":
    square = Square()
    print(square.rect())  # 직사각형 : 가로 2, 세로 3 => 6
    print(square.par())   # 평행사변형 : 가로 2, 높이 5 => 10
    print(square.trape()) # 사다리꼴 : 윗면 4, 밑면 8, 높이 5 => 30
```

### 2. 카페 키오스크: `kiosk`

`kiosk` 모듈은 메뉴판 출력, 메뉴 주문, 결제, 주문표 출력을 할 수 있는 `Kiosk` 클래스를 제공합니다.

- **method**:
    - menu_print() : 메뉴판 출력
    - menu_select() : 메뉴 주문
    - pay() : 결제
    - table() : 주문표 출력

#### 사용 예시
```bash
python main.py
```
```python
# main.py

from kiosk import Kiosk

if __name__ == "__main__":
    kiosk = Kiosk()
    kiosk.menu_print()
    kiosk.menu_select()
    kiosk.pay()
    kiosk.table()
```