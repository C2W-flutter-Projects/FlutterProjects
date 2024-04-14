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

class TodoModelClass {
  int? taskId;
  String title;
  String description;
  String date;
  bool isCheckBoxChecked;

  TodoModelClass({
    this.taskId,
    required this.title,
    required this.description,
    required this.date,
    this.isCheckBoxChecked = false,
  });

  Map<String, dynamic> taskinfo() {
    return {
      'title': title,
      'description': description,
      'date': date,
      'ischeckBoxChecked': isCheckBoxChecked ? 1 : 0,
    };
  }

  @override
  String toString() {
    return '''{taskId : $taskId , title: $title, description : $description, date : $date, isCheckBoxChecked : $isCheckBoxChecked
    }''';
  }
}
