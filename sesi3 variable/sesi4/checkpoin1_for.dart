import 'dart:ffi';

void main() {


  
  // melakukan perhitungan
  // for (var i = 1; i <= 100; i++) {
  //   print('$i x 2 = ${i * 2}');
  // }

  final mahasiswa = ['Andi', 'Budi', 'Citra', 'Dewi', 'Endah'];
  print('jumlah data: ${mahasiswa.length}');

  for (var i = 0; i < mahasiswa.length; i++) {
    print("Mahasiswa ke-${i + 1}: ${mahasiswa[i]}");
  }

}