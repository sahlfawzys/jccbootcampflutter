import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  double? _alas, _tinggi, _sisi;

  Segitiga(double alas, tinggi, sisi) {
    if (alas < 0) {
      alas *= -1;
    }
    _alas = alas;

    if (tinggi < 0) {
      tinggi *= -1;
    }
    _tinggi = tinggi;

    if (sisi < 0) {
      sisi *= -1;
    }
    _sisi = sisi;
  }

  @override
  double luas() {
    // TODO: implement luas
    return 0.5 * _alas! * _tinggi!;
  }

  @override
  double keliling() {
    // TODO: implement keliling
    return _alas! + _tinggi! + _sisi!;
  }
}
