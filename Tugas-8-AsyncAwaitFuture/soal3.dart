void main(List<String> args) async {
  print('Ready. Sing');
  await line();
  await line2();
  await line3();
  await line4();
}

Future<void> line() {
  String lyric = 'pernahkah kau merasa...';
  return Future.delayed(Duration(seconds: 5), () => print(lyric));
}

Future<void> line2() {
  String lyric = 'pernahkah kau merasa......';
  return Future.delayed(Duration(seconds: 3), () => print(lyric));
}

Future<void> line3() {
  String lyric = 'pernahkah kau merasa';
  return Future.delayed(Duration(seconds: 2), () => print(lyric));
}

Future<void> line4() {
  String lyric = 'Hatimu hampa, pernahkah kau merasa hati mu kosong...';
  return Future.delayed(Duration(seconds: 1), () => print(lyric));
}
