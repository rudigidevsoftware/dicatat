import 'package:dicatat/model/catatan_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqliteHelper {
  static SqliteHelper? _databaseHelper;
  static Database? _database;

  SqliteHelper._internal() {
    _databaseHelper = this;
  }

  factory SqliteHelper() => _databaseHelper ?? SqliteHelper._internal();

  static const String _tableCatatan = 'dataCatatan';

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    var db = openDatabase(
      join(path, 'dicatat_db.db'),
      onCreate: (db, version) async => _createDb(db),
      version: 1,
    );
    return db;
  }

  static void _createDb(Database db) async {
    //Table User
    await db.execute(
        'CREATE TABLE $_tableCatatan(idCatat INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, time TEXT, total INTEGER,type TEXT,deleted INTEGER)');
  }

  Future<Database?> get database async {
    _database = await _initializeDb();
    return _database;
  }

  Future<int?> insertCatatan(Catatan catatan) async {
    final Database? db = await database;
    var response = await db?.insert(_tableCatatan, catatan.toJson());
    return response;
  }

  Future getCatatan() async {
    final Database? db = await database;
    var results = await db!.query(_tableCatatan);
    if (results.isEmpty) {
      return 0;
    } else {
      return results;
    }
  }

  Future<int?> deleteCatatan(String id) async {
    final db = await database;
    var response = await db?.delete(
      _tableCatatan,
      where: 'idCatat = ?',
      whereArgs: [id],
    );
    return response;
  }
}
