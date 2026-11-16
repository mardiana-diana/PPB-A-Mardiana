void main() {
  final produk = ['Beras', 'Gula', 'Kopi', 'rokok'];
  for (final item in produk) {
    print('Mencari: $item');

    if (item == 'rokok') {
      print('Produk ditemukan!');
      break;
    }
  }
}