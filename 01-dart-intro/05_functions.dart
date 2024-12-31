void main() {
  print(greetEveryone());
  print('sum: ${addTwoNumbers(10, 10)}');
  print('greet: ${greePerson(name: 'alenj0x1')}');
  print('greet: ${greePerson(name: 'alenj0x1', message: 'this is a message')}');
}

String greetEveryone() => 'hi everyone';
String greetEveryoneTwo() {
  return 'hi everyone';
}

// [] optional
int addTwoNumbers(int a, [int b = 0]) {
  // b ??= 0;
  return a + b;
}

int addTwoNumberTwo(int a, int b) => a + b;

// name parameters
String greePerson({required String? name, String message = 'hi'}) {
  return '$message, $name';
}
