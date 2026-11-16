void main() {
  final mahasiswa = ['diki', 'diana', 'defita', 'yeyen'];

  for (final mhs in mahasiswa) {
    if (mhs == 'diana') {
      print('Data diana ditemukan, hentikan pencarian.');
      break; 
    }
    print('Memeriksa: $mhs');
  }
  print('\nLewati mahasiswa yang bernama Budi:');
  for (final mhs in mahasiswa) {
    if (mhs == 'diki') {
      continue; // Lewati iterasi ini.
    }
    print('Mahasiswa: $mhs');
  }
}