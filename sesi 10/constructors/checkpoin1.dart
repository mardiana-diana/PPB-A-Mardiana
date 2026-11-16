class Tiket {
  final String judul;
  final String studio;
  final int harga;

  // 1. Generative constructor (sekaligus constant constructor)
  const Tiket(this.judul, this.studio, this.harga);

  // 2. Named constructor khusus tiket VIP
  Tiket.vip(this.judul, this.studio) : harga = 100000;

  // 3. Redirecting constructor untuk promo (meneruskan ke constructor utama)
  Tiket.promo(String judul, String studio) : this(judul, studio, 35000);

  // 4. Factory constructor yang memilih tipe tiket berdasarkan kategori
  factory Tiket.buat(String judul, String kategori) {
    if (kategori == 'VIP') {
      return Tiket.vip(judul, 'Premiere');
    } else if (kategori == 'Promo') {
      return Tiket.promo(judul, 'Studio 2');
    }
    return Tiket(judul, 'Studio 1', 50000);
  }

  void tampilkan() {
    print('[$studio] $judul - Rp $harga');
  }
}

void main() {
  // 1. Membuat tiket lewat generative constructor
  var t1 = Tiket('Interstellar', 'Studio 1', 50000);

  // 2. Membuat tiket lewat named constructor
  var t2 = Tiket.vip('Oppenheimer', 'Premiere');

  // 3. Membuat tiket lewat redirecting constructor
  var t3 = Tiket.promo('Avatar 2', 'Studio 2');

  // 4. Membuat tiket lewat factory constructor
  var t4 = Tiket.buat('Dune: Part Two', 'VIP');

  t1.tampilkan();
  t2.tampilkan();
  t3.tampilkan();
  t4.tampilkan();

  print('---');

  var judulFilmList = ['Batman', 'Spiderman'];
  var daftarVip = judulFilmList.map((judul) => Tiket.vip(judul, 'Premiere')).toList();
  for (var tiket in daftarVip) {
    tiket.tampilkan();
  }
}
