void main() {
  List<String> krs = ['Basis Data', 'bahasa inggris 2'];
  krs.add('Technopreneur');
  print(krs);
  krs.remove('bahasa inggris 2');
  print(krs);
  print(krs.contains('Basis Data'));
  print(krs.length);
  krs.clear();
  print(krs);
  print(krs.isEmpty);
}