void main() {
  // final windPlant = new EnergyPlant();

  final windPlant = new WindPlant(initialEnergy: 10);
  final nuclearPlant = new NuclearPlant(energyLeft: 100);

  print(windPlant.energyLeft);
  print('wind: ${chargePhone(windPlant)}');

  print(nuclearPlant.energyLeft);
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType { wind, solar, water, nuclear }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  double energyLeft;
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
