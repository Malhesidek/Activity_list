import 'package:flutter/material.dart';
import 'package:memory_hive/data/activity/activity_model.dart';
import 'package:memory_hive/ui/screens/activities_page.dart';
import 'package:memory_hive/ui/screens/activity_edit_page.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => ActivitiesPage());
      case '/activity_edit':
        return MaterialPageRoute(builder: (context) => ActivityEditPage(givenActivity: args as ActivityModel,));
      default:
        return null;
    }
  }
}
