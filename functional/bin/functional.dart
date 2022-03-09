import 'dart:async';

String scream(int length) => "A${'a' * length}h!";

void main() {
  final values = [2, 3, 5, 7, 11];

  values.map(scream).forEach(print);
  print('=' * 20);

  values.skip(1).take(3).map(scream).forEach(print);
  print('=' * 20);

  
}
