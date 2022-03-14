void main() {
  // Soal nomor 1
  print(range(11, 23));

  // Soal nomor 2
  print(rangeWithStep(23, 11, 2));

  // Soal nomor 3
  var input = [
    ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
    ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar']
  ];
  dataHandling(input);

  // Soal nomor 4
  balikKata('piring baru');
}

// Function nomor 1
range(int startNum, int finishNum) {
  List<int> temp = [];
  if (startNum <= finishNum) {
    for (var i = startNum; i <= finishNum; i++) {
      temp.add(i);
    }
  } else {
    for (var i = startNum; i >= finishNum; i--) {
      temp.add(i);
    }
  }
  return temp;
}

// Function nomor 2
rangeWithStep(int startNum, int finishNum, int step) {
  List<int> temp = [];
  if (startNum <= finishNum) {
    for (var i = startNum; i <= finishNum; i += step) {
      temp.add(i);
    }
  } else {
    for (var i = startNum; i >= finishNum; i -= step) {
      temp.add(i);
    }
  }
  return temp;
}

// Function nomor 3
dataHandling(List data) {
  data.forEach((element) {
    print('Nomor ID : ${element[0]}');
    print('Nama Lengkap : ${element[1]}');
    print('TTL : ${element[2]} ${element[3]}');
    print('Hobi : ${element[4]}');
    print('');
  });
}

// Function nomor 4
balikKata(String kata) {
  String temp = '';
  for (var i = kata.length - 1; i >= 0; i--) {
    temp += kata[i];
  }
  print(temp);
}
