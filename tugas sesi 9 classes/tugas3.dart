class User {
  String username;
  String email;
  String role;
  bool isActive;

  User({
    required this.username,
    required this.email,
    this.role = 'member',
    this.isActive = true,
  });

  User.admin(this.username, this.email)
      : role = 'admin',
        isActive = true;

  User.guest()
      : username = 'guest',
        email = '-',
        role = 'viewer',
        isActive = true;

  void tampilkanProfil() {
    print('$username | $email | $role | aktif: $isActive');
  }
}

void main() {
  var u1 = User(username: 'budi', email: 'budi@mail.com');
  var u2 = User.admin('siti', 'siti@kantor.com');
  var u3 = User.guest();

  u1.tampilkanProfil();
  u2.tampilkanProfil();
  u3.tampilkanProfil();
}