void main() {
  // Soal nomor 1
  int i = 2;
  print('LOOPING PERTAMA');
  while (i <= 20) {
    print('$i - I love coding');
    i += 2;
  }
  i -= 2;
  print('LOOPING KEDUA');
  while (i >= 2) {
    print('$i - I will become a mobile developer');
    i -= 2;
  }

  // Soal nomor 2
  for (var i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 2 == 1) {
      print('$i - I Love Coding');
    } else if (i % 2 == 1) {
      print('$i - Santai');
    } else {
      print('$i - Berkualitas');
    }
  }

  // Soal nomor 3
  for (var i = 0; i < 4; i++) {
    String cross = '';
    for (var j = 0; j < 8; j++) {
      cross += '#';
    }
    print(cross);
  }

  // Soal nomor 4
  for (var i = 0; i < 7; i++) {
    String cross = '';
    for (var j = 0; j <= i; j++) {
      cross += '#';
    }
    print(cross);
  }
}
