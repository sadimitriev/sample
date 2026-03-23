class User {
  String tokenKey;
  int idAdmUser;
  String fio;
  String position;
  int idLab;
  int idRole;

  User({
    required this.tokenKey,
    required this.idAdmUser,
    required this.fio,
    required this.position,
    required this.idLab,
    required this.idRole,
  });

  User.empty()
    : this(
        tokenKey: '',
        idAdmUser: 0,
        fio: '',
        position: '',
        idLab: 0,
        idRole: 0,
      );

  void reset() {
    this.tokenKey = '';
    this.idAdmUser = 0;
    this.fio = '';
    this.position = '';
    this.idLab = 0;
    this.idRole = 0;
  }

  bool get isValid {
    return this.tokenKey != '' &&
        this.idAdmUser != 0 &&
        idLab != 0 &&
        idRole != 0;
  }
}
