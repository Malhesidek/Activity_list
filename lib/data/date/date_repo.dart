// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:developer';

import 'package:memory_hive/data/date/date_data_provider.dart';

class DateRepo {
  final DateDataProvider dateDataProvider;
  DateRepo({
    required this.dateDataProvider,
  });

  Future<Map<DateTime, int>> fetchActivitiesByMonth(
      DateTime selectedMonth) async {
    var data = await dateDataProvider.fetchActivitiesByMonth(selectedMonth);
    var activitiesNumber = activitiesCountByDay(data);
    log("${activitiesNumber}");
    return activitiesNumber;
  }

  Map<DateTime, int> activitiesCountByDay(
      List<Map<String, Object?>> activitiesList) {
    Map<DateTime, int> activitiesCountByDate = {};
    for (var activity in activitiesList) {
      DateTime date = activity['date'] as DateTime;
      activitiesCountByDate[date] = (activitiesCountByDate[date] ?? 0) + 1;
    }
    return activitiesCountByDate;
  }
}
