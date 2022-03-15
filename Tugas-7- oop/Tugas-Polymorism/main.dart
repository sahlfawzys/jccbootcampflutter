import 'bangun_datar.dart';
import 'lingkaran.dart';
import 'persegi.dart';
import 'segitiga.dart';

void main(List<String> args) {
  BangunDatar bangunDatar = BangunDatar();
  Lingkaran lingkaran = Lingkaran(-7.0);
  Persegi persegi = Persegi(10.0);
  Segitiga segitiga = Segitiga(5.0, 4.0, 10.0);

  bangunDatar.luas();
  print('luas lingkaran = ${lingkaran.luas()}');
  print('luas persegi = ${persegi.luas()}');
  print('luas segitiga = ${segitiga.luas()}');

  bangunDatar.keliling();
  print('keliling lingkaran = ${lingkaran.keliling()}');
  print('keliling persegi = ${persegi.keliling()}');
  print('keliling segitiga = ${segitiga.keliling()}');
}
