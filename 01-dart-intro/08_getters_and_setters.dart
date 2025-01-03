void main() {
  final mySquare = Square(side: -15);

  // mySquare.side = -10;

  print('area: ${mySquare.area}');
}

class Square {
  // private properties double _side;
  double _side;

  Square({required double side})
      : assert(side >= 0, 'side must be major to zero'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('value: $value');

    if (value < 0) throw 'value must be major to zero';

    _side = value;
  }
}
