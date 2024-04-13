// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:memory_hive/data/activity/activity_model.dart';
import 'package:memory_hive/data/database_provider.dart';

class ActivityDataProvider {
  final DatabaseProvider databaseProvider;

  ActivityDataProvider({
    required this.databaseProvider,
  });

  Future<List<ActivityModel>> fetchAllActivities() async {
    final db = await databaseProvider.database;
    var data = await db.rawQuery('SELECT * FROM Activities');
    List<ActivityModel> activities = List.generate(
        data.length, (index) => ActivityModel.fromJson(data[index]));
    log("${activities.length}");
    return activities;
  }

  Future<ActivityModel> fetchActivityById(int id) async {
    final db = await databaseProvider.database;
    var data = await db.rawQuery('SELECT * FROM Activities WHERE id=$id');
    ActivityModel activity = ActivityModel.fromJson(data[0]);
    log("${activity}");
    return activity;
  }

  Future<void> insertActivity(ActivityModel activity) async {
    final db = await databaseProvider.database;
    var data = await db.rawInsert(
        'INSERT INTO Activities(date, image, title, description, time) VALUES(?,?,?,?,?)',
        [activity.date, activity.image, activity.title, activity.description, activity.time]);
    log('INSERTED $data');
  }

  Future<void> editActivity(ActivityModel activity) async {
    final db = await databaseProvider.database;
    var data = await db.rawUpdate(
        'UPDATE Activities SET image=?, title=?, description=?, time=? WHERE ID=?',
        [activity.image, activity.title, activity.description, activity.time, activity.id]);
    log('UPDATED $data');
  }

  Future<void> deleteActivity(int id) async {
    final db = await databaseProvider.database;
    var data = await db.rawDelete('DELETE from Activities WHERE id=?', [id]);
    log('DELETED $data');
  }
}
