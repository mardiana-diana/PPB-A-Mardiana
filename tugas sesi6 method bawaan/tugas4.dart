void main() {
  List<String> daftarNama = [
    'Mardiana', 'diki tirta', 'yeyen', 'siti'
  ];
  String kataKunci = 'DI';
  for (var nama in daftarNama) {
    if (nama.toLowerCase().contains(kataKunci.toLowerCase())) {
      print(nama);
    }
  }
}