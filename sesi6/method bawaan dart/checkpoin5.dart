void main() {
  Map<String, int> stok = {'Pulpen': 30, 'Pensil warna': 40, 'Penghapus': 20};
  print(stok.keys);
  print(stok.values);
  print(stok.containsKey('Pensil warna'));
  stok.remove('Pensil warna');
  print(stok);
  int total = 0;
  for (var jumlah in stok.values) {
    total += jumlah;
  }
  print('Total stok: $total');
}