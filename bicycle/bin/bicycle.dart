class Bicycle {
  int cadence;
  int gear;
  int _speed = 0;

  int get speed => _speed;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $speed mph';
}

void main(List<String> arguments) {
  var bike = Bicycle(2, 1);
  print(bike);
  bike.speedUp(3);
  print(bike);
  bike.applyBrake(44);
  print(bike);
}
