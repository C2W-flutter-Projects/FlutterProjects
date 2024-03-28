class SingleChildUserInfo {
  int? id;
  String? name;
  String? userName;
  String? password;

  SingleChildUserInfo(
      {required this.name,
      required this.userName,
      required this.password,
      this.id});
  Map<String, dynamic> getUserMap() {
    return {
      'name': name,
      'username': userName,
      'password': password,
    };
  }

  @override
  String toString() {
    return 'SingleChildUserInfo{name: $name, userName: $userName, password: $password}';
  }
}
