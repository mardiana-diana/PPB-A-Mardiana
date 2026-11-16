void main() {
  String status = "alumni";

switch (status) {
    case "aktif":
      print("Mahasiswa Aktif");
    case "cuti":
      print("Mahasiswa Cuti");
    case "lulus":
      print("Mahasiswa Sudah Lulus");
    case "alumni": 
      print("Mahasiswa Sudah Alumni");
    default:
      print("Status tidak diketahui");
  }

}