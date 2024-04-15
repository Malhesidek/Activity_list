// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:memory_hive/data/activity/activity_data_provider.dart';
import 'package:memory_hive/data/activity/activity_model.dart';

class ActivityRepo {
  final ActivityDataProvider activityDataProvider;
  ActivityRepo({
    required this.activityDataProvider,
  });

  Future<List<ActivityModel>> fetchAllActivities() async {
    final data = await activityDataProvider.fetchAllActivities();
    List<ActivityModel> activities = List.generate(
        data.length, (index) => ActivityModel.fromJson(data[index]));
    log("$activities");
    return activities;
  }

  Future<ActivityModel> fetchActivityById(int id) async {
    final data = await activityDataProvider.fetchActivityById(id);
    ActivityModel activity = ActivityModel.fromJson(data[0]);
    log("$activity");
    return activity;
  }

  Future<void> insertActivity(ActivityModel activity) async {
    final activityJSON = activity.toMap();
    activityDataProvider.insertActivity(activityJSON);
  }

  Future<void> editActivity(ActivityModel activity) async {
    final activityJSON = activity.toMap();
    activityDataProvider.editActivity(activityJSON);
  }

  Future<void> deleteActivity(int id) async {
    activityDataProvider.deleteActivity(id);
  }
}
