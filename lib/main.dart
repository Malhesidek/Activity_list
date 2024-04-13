import 'package:flutter/material.dart';

void main() {
  runApp(const ActivityApp());
}

class ActivityApp extends StatefulWidget {
  const ActivityApp({super.key});

  @override
  State<ActivityApp> createState() => _ActivityAppState();
}

class _ActivityAppState extends State<ActivityApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(textTheme: TextTheme(bodyMedium: TextStyle(fontFamily: "Nunito Sans", fontSize: 14))),
      home: ActivityListPage(),
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
    return SafeArea(child: Scaffold(appBar: AppBar(title: Text("Activity"),),));
  }
}
