class Cart {
  List<String>? items;

  void addItem(String item) {
    items ??= []; // null이면 빈 리스트 생성
    items!.add(item); // null이 아님을 확신할 때 사용
  }

  void removeItem(String item) {
    items?.remove(item); // items가 null이 아닐 때만 실행
  }

  int get itemCount => items?.length ?? 0; // null이면 0 반환

  void printItems() {
    if (items != null) {
      for (var item in items!) {
        print(item);
      }
    } else {
      print('Cart is empty');
    }
  }

  bool containsItem(String item) {
    return items?.contains(item) ?? false; // null이면 false 반환
  }
}