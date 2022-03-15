import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  double? _jari_jari;
  double pi = 3.14;

  Lingkaran(double jari_jari) {
    if (jari_jari < 0) {
      jari_jari *= -1;
    }
    _jari_jari = jari_jari;
  }

  @override
  double luas() {
    // TODO: implement luas
    return pi * _jari_jari! * _jari_jari!;
  }

  @override
  double keliling() {
    // TODO: implement keliling
    return pi * 2 * _jari_jari!;
  }
}
