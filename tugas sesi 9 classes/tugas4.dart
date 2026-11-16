class Invoice {
  String nomor;
  String namaKlien;
  double subtotal;
  double pajak;
  double diskon;

  Invoice({
    required this.nomor,
    required this.namaKlien,
    required this.subtotal,
    this.pajak = 11,
    this.diskon = 0,
  });

  Invoice.member({
    required this.nomor,
    required this.namaKlien,
    required this.subtotal,
    this.pajak = 11,
  }) : diskon = 10;

  double hitungTotal() {
    double jmlDiskon = subtotal * (diskon / 100);
    double hargaSetelahDiskon = subtotal - jmlDiskon;
    double jmlPajak = hargaSetelahDiskon * (pajak / 100);
    return hargaSetelahDiskon + jmlPajak;
  }

  void cetak() {
    print('Invoice [$nomor] - $namaKlien | Subtotal: Rp $subtotal | Diskon: $diskon% | Pajak: $pajak% | Total: Rp ${hitungTotal()}');
  }
}

void main() {
  var inv1 = Invoice(nomor: 'INV001', namaKlien: 'PT BOS MUDA', subtotal: 1000000);
  var inv2 = Invoice.member(nomor: 'INV002', namaKlien: 'CV MARDIANA (member)', subtotal: 1000000);

  inv1.cetak();
  inv2.cetak();
}