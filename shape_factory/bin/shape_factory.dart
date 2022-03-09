import "dart:math";

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  @override
  num get area => side * side;
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(3);

  throw ("Can't create type '$type'");
}

void main() {
  final circle = shapeFactory('circle');
  print(circle.area);

  final square = shapeFactory('square');
  print(square.area);

  try {
    final unknown = shapeFactory('unknown');
    print(unknown.area);
  } catch (e) {
    print(e);
  }
}
