import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;
Future<void> addNewCard() async{
  String dbName = 'card.db';
  String tbName = 'cardTable';
  String name = 'Done';
  var dbPath = await getDatabasesPath();
  String path = p.join(dbPath, 'card.db');
  Database database = await openDatabase(
    path,
    version:1,
    onCreate: (Database db, version) async => await db.execute('CREATE TABLE `$tbName`(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT )')
  );
  var addCard = await database.rawInsert('INSERT INTO `$tbName` (name) VALUES ("$name") ');
  var render = await database.rawQuery('SELECT * FROM `$tbName`');
  print(render.toString());

}

Stream<String> cardList(Stream<String> source) async*{
  await for (final item in source){
    yield item;
  }
}

Stream<String> cardFromDB() async*{
  String dbName = 'card.db';
  String tbName = 'cardTable';
  String name = 'Done';
  var dbPath = await getDatabasesPath();
  String path = p.join(dbPath, 'card.db');
  Database database = await openDatabase(
      path,
      version:1,
      onCreate: (Database db, version) async => await db.execute('CREATE TABLE `$tbName`(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT )')
  );
  var render = await database.rawQuery('SELECT id FROM `$tbName`');
  for (final item in render){
    yield item['id'].toString();
  }

}