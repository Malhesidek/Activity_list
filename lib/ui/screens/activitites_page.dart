import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/data/activity/activity_model.dart';
import 'package:memory_hive/logic/bloc/activities_bloc/activities_bloc.dart';
import 'package:memory_hive/logic/bloc/date_bloc/date_bloc.dart';
import 'package:memory_hive/ui/widgets/activity_calendar.dart';
import 'package:memory_hive/ui/widgets/activity_card.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({super.key});

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  late DateBloc dateBloc;
  late ActivitiesBloc activitiesBloc;

  @override
  void initState() {
    super.initState();
    dateBloc = DateBloc();
    activitiesBloc = ActivitiesBloc(dateBloc);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => dateBloc,
        ),
        BlocProvider(
          create: (context) => activitiesBloc,
        ),
      ],
      child: SafeArea(
          child: Scaffold(
            backgroundColor: kColorLittleBlue,
        appBar: AppBar(
          backgroundColor: kColorPurple,
          title: Text("Activities"),
        ),
        body: Column(
          children: [
            ActivityCalendar(),
          ActivityCard(activity: ActivityModel(date: DateTime.now(), title: "Title", description: "Description", time: DateTime.now()))],
        ),
      )),
    );
  }
}
