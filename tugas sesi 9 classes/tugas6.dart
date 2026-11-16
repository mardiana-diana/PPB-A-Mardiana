class SesiLogin {
  final String userId;
  late String token;
  bool isOnline = false;
  String? waktuLogout;

  SesiLogin(this.userId);

  void login() {
    token = 'TKN-$userId';
    isOnline = true;
  }

  void logout(String waktu) {
    isOnline = false;
    waktuLogout = waktu;
  }

  void status() {
    print('User: $userId | Token: $token | isOnline: $isOnline | Logout: ${waktuLogout ?? "-"}');
  }
}

void main() {
  var sesi1 = SesiLogin('USR001');
  print(sesi1.token);
  sesi1.login();
  sesi1.logout('10:00 AM');
  sesi1.status();

  var sesi2 = SesiLogin('USR002');
  sesi2.login();
  sesi2.status();
}