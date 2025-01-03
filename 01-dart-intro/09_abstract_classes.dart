void main() {
  // final windPlant = new EnergyPlant();

  final windPlant = new WindPlant(initialEnergy: 10);

  windPlant.consumeEnergy(5);

  print(windPlant.energyLeft);
  print('wind: ${chargePhone(windPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType { wind, solar, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

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
