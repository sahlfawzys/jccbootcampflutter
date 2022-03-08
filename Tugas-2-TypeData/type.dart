import 'dart:io';

void main() {
  // Soal nomor 1
  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';
  print('$word $second $third $fourth $fifth $sixth $seventh');
  print('');

  // Soal nomor 2
  var sentence = "I am going to be Flutter Developer";
  var exampleFirstWord = sentence[0];
  var exampleSecondWord = sentence[2] + sentence[3];
  var thirdWord = sentence.substring(5, 10);
  var fourthWord = sentence.substring(11, 13);
  var fifthWord = sentence.substring(14, 16);
  var sixthWord = sentence.substring(17, 24);
  var seventhWord = sentence.substring(25);

  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' + exampleSecondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);
  print('');

  // Soal nomor 3
  print("masukan nama depan :");
  String firstname = stdin.readLineSync()!;
  print("masukan nama belakang :");
  String surname = stdin.readLineSync()!;

  print('nama lengkap anda adalah: $firstname $surname');
  print('');

  // Soal nomor 4
  void hitung(int a, int b) {
    print('perkalian : ${a * b}');
    print('pembagian : ${a / b}');
    print('penambahan : ${a + b}');
    print('pengurangan : ${a - b}');
  }

  hitung(5, 10);
}
