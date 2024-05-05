import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/data/activity/activity_model.dart';
import 'package:memory_hive/logic/bloc/acitvity_edit_bloc/activity_edit_bloc.dart';

class ActivityEditPage extends StatefulWidget {
  const ActivityEditPage({super.key, required this.givenActivity});
  final ActivityModel givenActivity;

  @override
  State<ActivityEditPage> createState() => _ActivityEditPageState();
}

class _ActivityEditPageState extends State<ActivityEditPage> {
  late ActivityEditBloc activityEditBloc;

  @override
  void initState() {
    super.initState();
    activityEditBloc = ActivityEditBloc(widget.givenActivity);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => activityEditBloc,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Activity",
            style: kTextAppTitle,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context, (activityEditBloc.state as ActivityEditChangedState).activity);
            },
          ),
        ),
        body: Column(),
      )),
    );
  }
}
