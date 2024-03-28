import 'requiredClasses.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

dynamic database;

//create table
Future<dynamic> createDB() async {
  return openDatabase(
    p.join(await getDatabasesPath(), "UserData.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''
        CREATE TABLE UserData(
          Id INTEGER PRIMARY KEY,
          name TEXT,
          username TEXT,
          password TEXT
        )
      ''');
    },
  );
}

// insert data
Future<void> insertUserData(SingleChildUserInfo obj) async {
  final localDB = await database;
  localDB.insert(
    "UserData",
    obj.getUserMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

// fetch data
Future<List<SingleChildUserInfo>> fetchUserData() async {
  final localDB = await database;

  List<Map<String, dynamic>> mapEntry = await localDB.query("UserData");

  return List.generate(mapEntry.length, (i) {
    return SingleChildUserInfo(
        id: mapEntry[i]["id"],
        name: mapEntry[i]["name"],
        userName: mapEntry[i]["username"],
        password: mapEntry[i]["password"]);
  });
}
