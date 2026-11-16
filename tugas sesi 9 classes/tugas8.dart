// class ApiCuaca {
//   double ambilSuhu(String kota) {
//     print('Menghubungi server cuaca...');
//     return 0;
//   }
// }

// class MockApiCuaca implements ApiCuaca {
//   @override
//   double ambilSuhu(String kota) {
//     if (kota == 'Surabaya') {
//       return 33.5;
//     } else if (kota == 'Malang') {
//       return 24.0;
//     } else {
//       return 28.0;
//     }
//   }
// }

// void tampilkanCuaca(ApiCuaca api, String kota) {
//   double suhu = api.ambilSuhu(kota);
//   print('Suhu di $kota: $suhu °C');
// }

// void main() {
//   ApiCuaca mockApi = MockApiCuaca();
//   tampilkanCuaca(mockApi, 'Surabaya');
//   tampilkanCuaca(mockApi, 'Malang');
//   tampilkanCuaca(mockApi, 'Jakarta');
// }

// Class Pengemudi (Kontrak 1)
class Pengemudi {
  void antar() {
    print('Mengantar penumpang/barang...');
  }
}

// Class Karyawan (Kontrak 2)
class Karyawan {
  String idKaryawan = '';
}

class Kurir implements Pengemudi, Karyawan {
  @override
  String idKaryawan;

  Kurir(this.idKaryawan);

  @override
  void antar() {
    print('Kurir dengan ID $idKaryawan sedang mengantar paket ke alamat tujuan.');
  }
}

void main() {
  var kurir = Kurir('EMP-K01');
  print('ID Karyawan: ${kurir.idKaryawan}');
  kurir.antar();
}