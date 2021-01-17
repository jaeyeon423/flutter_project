import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'data_form.dart';

final String TableName = 'memos';

class DBHelper {
  var _db;

  Future<Database> get Database async {
    if (_db != null) return _db;
    _db = openDatabase(
      join(await getDatabasesPath(), 'memos.db'),
      onCreate: (db, version) {
        return db.execute(
            "CREATE TABLE memos(id INTEGER PRIMARY KEY, title TEXT, text TEXT, createTime TEXT, editTime TEXT");
      },
      version: 1,
    );
    return _db;
  }
}
