class KalkulatorGaji {

  // String namaHRD = 'Pak Diki';

  static const double persenPajak = 5;

  static double hitungPajak(double gajiKotor) {
    return gajiKotor * (persenPajak / 100);
  }

  static double gajiBersih(double gajiPokok, double tunjangan) {
    double gajiKotor = gajiPokok + tunjangan;
    double pajak = hitungPajak(gajiKotor);
    return gajiKotor - pajak;
  }

  static void slip(String nama, double gajiPokok, double tunjangan) {
    double gajiKotor = gajiPokok + tunjangan;
    double pajak = hitungPajak(gajiKotor);
    double bersih = gajiBersih(gajiPokok, tunjangan);

    // print('HRD: $namaHRD');

    print('=== SLIP GAJI: $nama ===');
    print('Gaji Pokok: $gajiPokok');
    print('Tunjangan: $tunjangan');
    print('Pajak (${persenPajak.toInt()}%): $pajak');
    print('Gaji Bersih: $bersih');
    print('');
  }
}

void main() {
  KalkulatorGaji.slip('mardiana', 8000000.0, 1000000.0);
  KalkulatorGaji.slip('yeyen', 7000000.0, 750000.0);
  KalkulatorGaji.slip('diki tirta', 6000000.0, 500000.0);
}