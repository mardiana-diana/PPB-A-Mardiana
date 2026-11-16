import 'dart:io';

void main() {
  // bool mahasiswaAktif = true;

  // if (mahasiswaAktif) {
  //   print("mahasiswa aktif");
  // } else {
  //   print("mahasiswa tidak aktif");
  // }
  // Deklarasi variabel boolean
  bool isloggedIn = false;

  // meminta input username dari pengguna
  stdout.write("masukkan username: ");
  String? username = stdin.readLineSync();

  // contoh logika sederhana: username = admin
  if (username == "mardiana") {
    isloggedIn = true;
  }
 
  // menampilkan hasil berdasarkan nilai boolean
  if (isloggedIn) {
  print("login berhasil! selamat datang, $username.");
  } else {
  print("login gagal! Username salah."); 
  }
}