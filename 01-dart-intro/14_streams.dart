void main() {
  emitNumbers().listen((value) {
    print(value);
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    // print('from periodic stream: $value');
    return value;
  }).take(5);
}
