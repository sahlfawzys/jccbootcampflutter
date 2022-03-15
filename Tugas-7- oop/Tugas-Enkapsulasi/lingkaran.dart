class Lingkaran {
  double? _jari_jari;
  double pi = 3.14;

  void set jari_jari(double value) {
    if (value < 0) {
      value *= -1;
    }
    _jari_jari = value;
  }

  double get luas => pi * _jari_jari! * _jari_jari!;
}
