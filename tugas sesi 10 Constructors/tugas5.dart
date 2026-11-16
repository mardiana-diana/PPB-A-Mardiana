class Mahasiswa(final String nim, var String nama) {
  // Baris 'String nama = '';' dihapus untuk menghindari duplikasi deklarasi field.

  String get sapaan => 'Halo, Mahasiswa $nama (NIM: $nim)';
}

void cetakInfo(String teks) => print(teks); // Kata kunci 'final' pada parameter fungsi biasa dihapus.

void main() {
  var mhs = Mahasiswa('3202416001', 'Rina Marlina');
  cetakInfo(mhs.sapaan);
}
