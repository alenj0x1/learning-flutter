void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original $numbers');
  print('List original ${numbers.length}');
  print('Index 0:  ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  print('List: ${numbers.toSet().toList()}');

  final numbersGreaterThanFive = numbers.where((num) {
    return num > 5;
  });

  print('>5: ${numbersGreaterThanFive.toSet()}');
}
