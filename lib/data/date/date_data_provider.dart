// ignore_for_file: unnecessary_this, unnecessary_brace_in_string_interps

import 'package:memory_hive/data/database_provider.dart';
import 'dart:developer';

class DateDataProvider {
  final DatabaseProvider databaseProvider;

  DateDataProvider({DatabaseProvider? databaseProvider})
      : this.databaseProvider = databaseProvider ?? DatabaseProvider();

  Future<List<Map<String, Object?>>> fetchActivitiesByMonth(DateTime selectedMonth) async {
    final db = await databaseProvider.database;
    var data = await db.rawQuery('''SELECT * FROM Activities
    WHERE strftime('%Y-%m', date) = ?''', [selectedMonth.toIso8601String().substring(0,7)]);
    log("date_data_provider: Number of activities ${data}");
    return data;
  }

  
}