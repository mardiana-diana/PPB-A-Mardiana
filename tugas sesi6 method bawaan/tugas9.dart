void main() {
  Set<String> hadir = {'mardiana', 'diki'};
  hadir.add('tirta');
  hadir.add('mardiana');
  print(hadir);
  hadir.remove('diki');
  print(hadir);
  print(hadir.contains('diki'));
  print(hadir.length);
}