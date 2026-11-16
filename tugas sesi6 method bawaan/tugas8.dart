void main() {
  List<String> nama = ['mardiana', 'diki', 'yeyen', 'doni'];
  nama.add('tirta');
  nama.remove('mardiana');
  nama.sort((a, b) => a.compareTo(b));
  print(nama);
  print('Jumlah: ${nama.length}');
} 