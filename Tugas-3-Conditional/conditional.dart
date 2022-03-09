import 'dart:io';

void main() {
  // Soal nomor 1
  print("Apakah anda ingin menginstall aplikasi? (y/t)");
  String value = stdin.readLineSync()!;
  value == 'y'
      ? print("anda akan menginstall aplikasi dart")
      : value == 't'
          ? print('aborted')
          : print('error, input hanya berupa y/t');

  // Soal nomor 2
  print('masukkan nama :');
  String nama = stdin.readLineSync()!;
  if (nama == '') {
    print('Nama harus diisi!');
    print('masukkan nama :');
    nama = stdin.readLineSync()!;
  }
  print('masukkan peran : (penyihir, guard, werewolf)');
  String peran = stdin.readLineSync()!;
  if (peran == '') {
    print('Halo $nama, Pilih Peranmu untuk memulai game');
    print('masukkan peran :');
    peran = stdin.readLineSync()!.toLowerCase();
  }
  if (peran == 'penyihir') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print(
        'Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!');
  } else if (peran == 'guard') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print(
        'Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf');
  } else if (peran == 'werewolf') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print('Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!');
  } else {
    print('peran tidak ditemukan');
  }

  // Soal nomor 3
  print('masukkan hari untuk mendapatkan quotes :');
  String quotes = stdin.readLineSync()!.toLowerCase();
  switch (quotes) {
    case 'senin':
      print(
          'Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');
      break;
    case 'selasa':
      print(
          'tiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.');
      break;
    case 'rabu':
      print(
          'Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');
      break;
    case 'kamis':
      print(
          'Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');
      break;
    case 'jumat':
      print('Hidup tak selamanya tentang pacar.');
      break;
    case 'sabtu':
      print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
      break;
    case 'minggu':
      print(
          'Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
      break;
    default:
      print('mohon input hari dengan benar');
  }

  // Soal nomor 4
  var hari = 12;
  var bulan = 8;
  var tahun = 1980;
  String nama_bulan;
  switch (bulan) {
    case 1:
      nama_bulan = 'Januari';
      break;
    case 2:
      nama_bulan = 'Februari';
      break;
    case 3:
      nama_bulan = 'Maret';
      break;
    case 4:
      nama_bulan = 'April';
      break;
    case 5:
      nama_bulan = 'Mei';
      break;
    case 6:
      nama_bulan = 'Juni';
      break;
    case 7:
      nama_bulan = 'Juli';
      break;
    case 8:
      nama_bulan = 'Agustus';
      break;
    case 9:
      nama_bulan = 'September';
      break;
    case 10:
      nama_bulan = 'Oktober';
      break;
    case 11:
      nama_bulan = 'November';
      break;
    case 12:
      nama_bulan = 'Desember';
      break;
    default:
      nama_bulan = '';
  }
  nama_bulan == ''
      ? print('bulan tidak ditemukan')
      : print('$hari $nama_bulan $tahun');
}
