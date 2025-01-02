void main() {
  final wolverine = Hero(name: 'logan', power: 'regeneration');

  print(wolverine.toString());
  print(wolverine.name);

  final john =
      User(name: 'john', lastName: 'doe', password: 'john1234', age: 300);

  print(john.toString());
}

class Hero {
  String name;
  String power;

  Hero({required this.name, required this.power});

  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  @override
  String toString() {
    return 'hero: $name';
  }
}

class User {
  String name;
  String lastName;
  String password;
  int age;

  User(
      {required this.name,
      required this.lastName,
      required this.password,
      required this.age});

  @override
  String toString() {
    return 'user: $name-$lastName';
  }
}
