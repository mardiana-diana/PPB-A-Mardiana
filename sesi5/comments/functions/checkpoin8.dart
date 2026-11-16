void sapa(String nama, [String pesan = "Selamat datang"]) {
  print("Halo $nama, $pesan!");
}

void main() {
  sapa("Mardiana");
  sapa("diana", "semangat belajar dart nya");
}