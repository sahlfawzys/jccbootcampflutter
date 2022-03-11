void main() {
  // Soal nomor 1
  teriak();

  // Soal nomor 2
  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali);

  // Soal nomor 3
  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

  // Soal nomor 4
  print('5! = ${factorial(5)}');
}

// function no 1
teriak() {
  print('Halo Sanbers!');
}

// function no 2
kalikan(a, b) {
  return a * b;
}

// function no 3
introduce(name, age, address, hobby) {
  return 'Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!';
}

// function no 4
factorial(n) {
  if (n <= 1) {
    return 1;
  } else {
    var a = n * factorial(n - 1);
    return a;
  }
}
