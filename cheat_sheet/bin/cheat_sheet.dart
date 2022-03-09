String stringfy(int x, int y) {
  return "$x $y";
}

void main() {
  print(stringfy(1, 3));
  print(stringfy(2, 3));

  String? foo = 'a string';
  String? bar;

  String? baz = foo ?? bar;
  print(baz);

  bar??='a string';
  print(bar);
}
