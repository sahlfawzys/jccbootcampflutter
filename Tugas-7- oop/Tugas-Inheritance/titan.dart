class Titan {
  int? _powerPoint;

  void set powerPoint(int value) {
    if (value < 5) {
      value = 5;
    }
    _powerPoint = value;
  }

  int get powerPoint => _powerPoint!;
}
