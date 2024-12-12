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