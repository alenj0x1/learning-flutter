void main() {
  final wolverine = Hero(name: 'logan', power: 'regeneration');

  print(wolverine.toString());
  print(wolverine.name);
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
