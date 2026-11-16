void main() {
  final angkatan = <int, List<String>>{
    2024: ['diki', 'aldi'],
    2025: ['diana', 'yeyen'],
  };

  outerLoop:
  for (final tahun in angkatan.keys) {
    for (final mhs in angkatan[tahun]!) {
      print('Angkatan $tahun - $mhs');

      if (mhs == 'diana') {
        print('Berhenti di diana!');
        break outerLoop; 
      }
    }
  }
}