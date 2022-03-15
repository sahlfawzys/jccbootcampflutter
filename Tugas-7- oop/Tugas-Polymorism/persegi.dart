import 'bangun_datar.dart';

class Persegi extends BangunDatar {
  double? _sisi;

  Persegi(double sisi) {
    if (sisi < 0) {
      sisi *= -1;
    }
    _sisi = sisi;
  }

  @override
  double luas() {
    // TODO: implement luas
    return _sisi! * _sisi!;
  }

  @override
  double keliling() {
    // TODO: implement keliling
    return 4 * _sisi!;
  }
}
