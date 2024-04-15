import 'dart:developer';

import 'package:memory_hive/data/date/date_data_provider.dart';

class DateRepo {
  final DateDataProvider dateDataProvider;
  DateRepo({
    required this.dateDataProvider,
  });

  // TODO check return value
  Future<void> fetchActivitiesByMonth(
      DateTime selectedMonth) async {
    var data = dateDataProvider.fetchActivitiesByMonth(selectedMonth);
    
    log("${data}");
  }
}
