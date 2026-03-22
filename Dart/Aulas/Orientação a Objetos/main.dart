void main() {
// Orientação a Objeto

  Car mercedes = Car("Mercedes");
  Car gol = Car("Gol");

  print(mercedes.valueCar);

}

class Car {

  final String model;
  String _segredo = "Mutio Dinheiro";

  int _value = 1000;

  int get valueCar => _value;

  void setValue(int value) => _value = value;

  Car(this.model);
}