void main() {
  String nama = '  Mardiana diana  ';
  String rapi = nama.trim();
  print('[$nama]');
  print('[$rapi]');
  print(rapi.toUpperCase());
  print('Diki Tirta'.toLowerCase());
  print(rapi.contains('Mardiana'));
  print(''.isEmpty);
  print(rapi.isNotEmpty);
}