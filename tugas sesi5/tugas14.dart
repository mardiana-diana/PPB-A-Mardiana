void main() {
  var nilai = [65, 85, 50, 95, 77];
  var lulus = nilai.where((item) {
    return item >= 77;
  }).toList();
  print(lulus);
}