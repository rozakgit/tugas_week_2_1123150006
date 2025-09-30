import 'dart:io';

double _readNumber(String label) {
  while (true) {
    stdout.write('$label: ');
    final input = stdin.readLineSync();
    if (input == null) continue;
    final value = double.tryParse(input.trim());
    if (value != null) return value;
    print('Input tidak valid. Masukkan angka.');
  }
}

void main() {
  while (true) {
    print('\n=== Kalkulator Sederhana ===');
    print('1) Tambah');
    print('2) Kurang');
    print('3) Kali');
    print('4) Bagi');
    print('5) Keluar');
    stdout.write('Pilih [1-5]: ');
    final pilih = stdin.readLineSync()?.trim();
    if (pilih == '5') {
      print('Bye!');
      return;
    }
    final a = _readNumber('Masukkan angka pertama');
    final b = _readNumber('Masukkan angka kedua');
    switch (pilih) {
      case '1':
        print('Hasil: ${a + b}');
        break;
      case '2':
      //...
      case '3':
      //...
      case '4':
      //....
      default:
        print('Pilihan tidak dikenal.');
    }
  }
}
