void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'mardiana', 'nilai': 97},
    {'nama': 'diki', 'nilai': 90},
    {'nama': 'yeyen', 'nilai': 85},
  ];
  mahasiswa.sort((a, b) => (b['nilai'] as int).compareTo(a['nilai'] as int));
  for (var mhs in mahasiswa) {
  print('${mhs['nama']}: ${mhs['nilai']}');
  }
}