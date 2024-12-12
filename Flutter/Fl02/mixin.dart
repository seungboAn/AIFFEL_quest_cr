mixin TimeStampMixin {
  DateTime? orderDate;
  DateTime? paymentDate;
  
  void ordered() {
    orderDate = DateTime.now();
  }

  void paid() {
    paymentDate = DateTime.now();
  }
}

class Order with TimeStampMixin {
  String id;
  
  Order(this.id);
}

void main() {
  var order = Order('123');
  order.ordered();
  order.paid();
  
  print('Order date: ${order.orderDate}');
  print('Payment date: ${order.paymentDate}');
}