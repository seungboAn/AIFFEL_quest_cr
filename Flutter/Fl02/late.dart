class Example {
  late int value = _calculateValue();

  int _calculateValue() {
    print('Calculating value...');
    return 42;
  }
}

void main() {
  var example = Example();
  print('Example created.');
  print('Value: ${example.value}');
}