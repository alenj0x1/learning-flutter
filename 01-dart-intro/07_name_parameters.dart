void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  // final ironMan = Hero(
  //     name: rawJson['name'],
  //     power: rawJson['power'],
  //     isAlive: rawJson['isAlive'] ?? false);

  final ironMan = Hero.fromJson(rawJson);
  print(ironMan.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'yes' : 'no'}';
  }
}
