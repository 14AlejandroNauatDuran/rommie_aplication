import 'package:flutter_login_ui/base/note1.dart';

import 'package:sqflite/sqflite.dart';

import 'package:path/path.dart';

class Operation1 {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'perfil.db'),
        onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE perfil (id INTEGER PRIMARY KEY, nom TEXT, ap TEXT, am TEXT, gen TEXT, ocu TEXT)"
        
      );
    }, version: 1);
  }

  static Future<void> insert(Note1 note1) async {
    Database database = await _openDB();
    return database.insert("perfil", note1.toMap());
  }

  static Future<void> delete(Note1 note1) async {
    Database database = await _openDB();

    return database.delete("perfil", where: 'id = ?', whereArgs: [note1.id]);
  }

  static Future<void> update(Note1 note1) async {
    Database database = await _openDB();

    return database
        .update("perfil", note1.toMap(), where: 'id = ?', whereArgs: [note1.id]);
  }

  static Future<List<Note1>> notes() async {
    Database database = await _openDB();

    final List<Map<String, dynamic>> notesMap = await database.query("perfil");

    for (var n in notesMap) {
      print("____" + n['nom']);
    }
    return List.generate(
        notesMap.length,
        (i) => Note1(
            id: notesMap[i]['id'],
            nom: notesMap[i]['nom'],
            ap: notesMap[i]['ap'],
            am: notesMap[i]['am'],
            gen: notesMap[i]['gen'],
            ocu: notesMap[i]['ocu']));
  }
}