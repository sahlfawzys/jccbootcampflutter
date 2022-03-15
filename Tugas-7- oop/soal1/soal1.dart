void main(List<String> args) {
  Segitiga segitiga = Segitiga();

  segitiga.setSetengah(0.5);
  segitiga.setAlas(-20.0);
  segitiga.setTinggi(30.0);

  print(segitiga.luasSegitiga());
}

class Segitiga {
  double? _setengah, _alas, _tinggi;

  void setSetengah(double value) {
    if (value != 0.5) {
      value = 0.5;
    }
    _setengah = value;
  }

  void setAlas(double value) {
    if (value < 0) {
      value *= -1;
    }
    _alas = value;
  }

  void setTinggi(double value) {
    if (value < 0) {
      value *= -1;
    }
    _tinggi = value;
  }

  double luasSegitiga() {
    return this._setengah! * this._alas! * this._tinggi!;
  }
}
