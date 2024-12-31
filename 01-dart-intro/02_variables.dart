void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  // dynamic = null
  dynamic errorMessage = 'hi';
  errorMessage = 1;
  errorMessage = () => true;
  errorMessage += 1;

  print(errorMessage);

  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
  """);
}
