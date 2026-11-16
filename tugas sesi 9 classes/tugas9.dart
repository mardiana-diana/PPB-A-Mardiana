class Antrean {
  static const String loket = 'CS';
  static int nomorTerakhir = 0;
  static int kuotaHarian = 5;

  String namaPengunjung;
  late String nomorAntrean;

  Antrean(this.namaPengunjung) {
    if (kuotaHarian > 0) {
      nomorTerakhir++;
      kuotaHarian--;
      // Format nomor antrean menjadi 3 digit (contoh: CS-001)
      nomorAntrean = '$loket-${nomorTerakhir.toString().padLeft(3, '0')}';
    } else {
      nomorAntrean = 'GAGAL';
    }
  }

  void info() {
    if (nomorAntrean == 'GAGAL') {
      print('$namaPengunjung: Kuota hari ini sudah penuh!');
    } else {
      // Format cetak disesuaikan agar mirip dengan contoh di modul/gambar tugas
      print('Pengunjung: $namaPengunjung | Nomor Antrean: $nomorAntrean');
    }
  }
}

void main() {
  var pengunjung1 = Antrean('mardiana');
  var pengunjung2 = Antrean('diki');
  var pengunjung3 = Antrean('yeyen');
  var pengunjung4 = Antrean('tirta');
  var pengunjung5 = Antrean('mei');
  var pengunjung6 = Antrean('Joko'); 
  var pengunjung7 = Antrean('Tono'); 

  pengunjung1.info();
  pengunjung2.info();
  pengunjung3.info();
  pengunjung4.info();
  pengunjung5.info();
  pengunjung6.info();
  pengunjung7.info();

  // print(pengunjung1.nomorTerakhir); 

  print('Sisa kuota hari ini: ${Antrean.kuotaHarian}');
}