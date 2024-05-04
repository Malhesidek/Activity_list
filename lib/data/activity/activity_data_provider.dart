// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_this, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings
import 'dart:developer';

import 'package:memory_hive/data/database_provider.dart';

class ActivityDataProvider {
  final DatabaseProvider databaseProvider;

  ActivityDataProvider({DatabaseProvider? databaseProvider})
      : this.databaseProvider = databaseProvider ?? DatabaseProvider();

  Future<List<Map<String, Object?>>> fetchAllActivities() async {
    final db = await databaseProvider.database;
    var data = await db.rawQuery('SELECT * FROM Activities');
    log("${data}");
    return data;
  }

  Future<List<Map<String, Object?>>> fetchActivityById(int id) async {
    final db = await databaseProvider.database;
    var data = await db.rawQuery('SELECT * FROM Activities WHERE id=$id');
    log("$data");
    return data;
  }

  //

  Future<void> insertActivity(Map<String, dynamic> activityJSON) async {
    final db = await databaseProvider.database;
    var data = await db.rawInsert(
        'INSERT INTO Activities(date, image, title, description, time) VALUES(?,?,?,?,?)',
        [
          activityJSON["date"],
          activityJSON["image"],
          activityJSON["title"],
          activityJSON["description"],
          activityJSON["time"],
        ]);
    log('INSERTED $data');
  }

  Future<void> editActivity(Map<String, dynamic> activityJSON) async {
    final db = await databaseProvider.database;
    var data = await db.rawUpdate(
        'UPDATE Activities SET image=?, title=?, description=?, time=? WHERE ID=?',
        [
          activityJSON["image"],
          activityJSON["title"],
          activityJSON["description"],
          activityJSON["time"],
          activityJSON["id"],
        ]);
    log('UPDATED $data');
  }

  Future<void> deleteActivity(int id) async {
    final db = await databaseProvider.database;
    var data = await db.rawDelete('DELETE from Activities WHERE id=?', [id]);
    log('DELETED $data');
  }

  Future<List<Map<String, Object?>>> fetchActivitiesByDay(
      DateTime selectedDay) async {

    final db = await databaseProvider.database;
    var data = await db.rawQuery('''SELECT * FROM Activities
    WHERE strftime('%Y-%m-%d', date) = ?''', [selectedDay.toIso8601String().substring(0,10)]);
    log("Selected day: " + selectedDay.toIso8601String());
    log("dataProvider.fetchActivitiesByDay${data}");
    return data;
  }
}
