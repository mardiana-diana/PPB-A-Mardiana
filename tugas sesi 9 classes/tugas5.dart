class Rekening {
  final String nomorRekening;
  String namaPemilik;
  double saldo = 0.0;
  String? transaksiTerakhir;

  Rekening(this.nomorRekening, this.namaPemilik);

  void setor(double jumlah) {
    saldo += jumlah;
    transaksiTerakhir = 'Setor $jumlah';
  }

  void tarik(double jumlah) {
    if (saldo < jumlah) {
      print('Saldo tidak cukup!');
    } else {
      saldo -= jumlah;
      transaksiTerakhir = 'Tarik $jumlah';
    }
  }

  void cekSaldo() {
    print('$nomorRekening | $namaPemilik | Saldo: $saldo | Terakhir: ${transaksiTerakhir ?? ""}');
  }
}

void main() {
  var rek1 = Rekening('1234567', 'Mardiana');
  var rek2 = Rekening('7654321', 'Diki tirta');

  rek1.setor(500000.0);

  rek1.cekSaldo();
  rek2.cekSaldo();
}