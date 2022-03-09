import "dart:math";

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(3);

    throw ("Can't create type '$type'");
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  @override
  num get area => pi * pow(radius, 2);
}

class CircleMock implements Circle {
  @override
  num area = 0;
  @override
  num radius = 0;
}

class Square implements Shape {
  final num side;
  Square(this.side);
  @override
  num get area => side * side;
}

/*
Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(3);

  throw ("Can't create type '$type'");
}
*/
void main() {
  final circle = Shape('circle');
  print(circle.area);

  final square = Shape('square');
  print(square.area);

  try {
    final unknown = Shape('unknown');
    print(unknown.area);
  } catch (e) {
    print(e);
  }
}
