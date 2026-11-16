class Orang {
  final String nama;
  final int umur;

  Orang(this.nama, this.umur);

  Orang.dariMap(Map<String, dynamic> data)
      : nama = data['nama'] as String,
        umur = data['umur'] as int;
}

class Mahasiswa extends Orang {
  final String nim;

  Mahasiswa(super.nama, super.umur, this.nim);

  Mahasiswa.dariMap(Map<String, dynamic> data)
      : nim = data['nim'] as String,
        super.dariMap(data);

  factory Mahasiswa.dariCsv(String csv) {
    var bagian = csv.split(',');
    var nama = bagian[0].trim();
    var umur = int.parse(bagian[1].trim());
    var nim = bagian[2].trim();
    return Mahasiswa(nama, umur, nim);
  }

  void tampilkan() {
    print('→ Mahasiswa: $nama ($umur thn) - NIM: $nim');
  }
}

void main() {
  var mhs1 = Mahasiswa.dariMap({
    'nama': 'Budi',
    'umur': 20,
    'nim': '3202416001',
  });

  var mhs2 = Mahasiswa.dariCsv('Siti,19,3202416002');

  mhs1.tampilkan();
  mhs2.tampilkan();
}