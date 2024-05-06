import 'package:flutter/material.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/ui/screens/activities_page.dart';
import 'package:memory_hive/ui/widgets/app_routes.dart';

void main() {
  runApp(const ActivityApp());
}

class ActivityApp extends StatefulWidget {
  const ActivityApp({super.key});

  @override
  State<ActivityApp> createState() => _ActivityAppState();
}

class _ActivityAppState extends State<ActivityApp> {
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light()
          .copyWith(textTheme: TextTheme(bodyMedium: kTextDefault)),
      onGenerateRoute: appRouter.onGenerateRoute,
      home: ActivitiesPage(),
    );
  }
}

class ActivityListPage extends StatefulWidget {
  const ActivityListPage({super.key});

  @override
  State<ActivityListPage> createState() => _ActivityListPageState();
}

class _ActivityListPageState extends State<ActivityListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: kColorPurple,
        title: Text(
          "Activity",
          style: kTextAppTitle,
        ),
      ),
      body: Center(
        child: Text(
          "This is the text",
        ),
      ),
    ));
  }
}
