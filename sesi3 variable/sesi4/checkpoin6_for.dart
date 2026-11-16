void main() {
  final nilai = [80, 75, 85, 90, 95];
  for (final item in nilai) {
    if (item == 0) {
      continue;
    }

    print('Nilai diproses: $item');
  }
}