class Produk {
  String kode;
  String nama;
  int harga;
  int stok;

  Produk(this.kode, this.nama, this.harga, this.stok);

  void tambahStok(int jumlah) {
    stok += jumlah;
    print('Stok ditambah $jumlah, stok sekarang: $stok');
  }

  void kurangiStok(int jumlah) {
    if (stok < jumlah) {
      print('Stok tidak mencukupi!');
    } else {
      stok -= jumlah;
      print('Stok dikurangi $jumlah, stok sekarang: $stok');
    }
  }

  void tampilkanInfo() {
    print('[$kode] $nama - Rp $harga | Stok: $stok');
  }
}

void main() {
  var p1 = Produk('P001', 'Laptop Asus', 9500000, 5);
  var p2 = Produk('P002', 'Mouse Wireless', 150000, 10);

  p1.tampilkanInfo();
  p1.tambahStok(3);
  p1.kurangiStok(10);

  p2.tampilkanInfo();
  p2.tambahStok(6);
  p2.kurangiStok(15);
}