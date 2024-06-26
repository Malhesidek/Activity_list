// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/data/activity/activity_model.dart';
import 'package:memory_hive/logic/bloc/activities_bloc/activities_bloc.dart';
import 'package:memory_hive/logic/bloc/date_bloc/date_bloc.dart';
import 'package:memory_hive/ui/widgets/activity_calendar.dart';
import 'package:memory_hive/ui/widgets/activity_card.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

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
    dateBloc.add(DateChangedDayEvent(chosenDay: DateTime.now()));
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
          floatingActionButton: FloatingActionButton(
              shape: CircleBorder(),
              backgroundColor: kColorPurple,
              child: Icon(Icons.add, color: kColorWhite),
              onPressed: _addActivity),
          backgroundColor: kColorLittleBlue,
          appBar: AppBar(
            backgroundColor: kColorPurple,
            title: Text("Activities", style: kTextAppTitle),
          ),
          body: Column(
            children: [
              BlocBuilder<DateBloc, DateState>(
                builder: (context, state) {
                  return ExpansionTile(
                    title: _calendarText(),
                    children: [
                      ActivityCalendar(),
                    ],
                    maintainState: true,
                    initiallyExpanded: true,
                  );
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 20),
                      BlocBuilder<ActivitiesBloc, ActivitiesState>(
                        builder: (context, state) {
                          if (state is ActivitiesLoadingState)
                            // ignore: curly_braces_in_flow_control_structures
                            return CircularProgressIndicator();
                          if (state is ActivitiesChangedState) {
                            return Column(
                              children: state.activities.map((activity) {
                                return GestureDetector(
                                    onTap: _openActivity(activity),
                                    onLongPress: _deleteActivity(activity),
                                    child: ActivityCard(activity: activity));
                              }).toList(),
                            );
                          } else {
                            return Container(); // Return empty container if state is not ActivitiesChangedState
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _addActivity() async {
    final newActivity = await Navigator.pushNamed(context, '/activity_edit',
        arguments: ActivityModel(
            date: (dateBloc.state as DateChangedState).dateModel.chosenDay!,
            title: "Blank Activity"));
    if (newActivity == null) {
      return;
    } else {
      activitiesBloc
          .add(ActivitiesInsertedEvent(activity: newActivity as ActivityModel));
      dateBloc.add(DateChangedMonthEvent(chosenMonth: newActivity.date));
      log("The new activity: $newActivity");
    }
  }

  _openActivity(activity) {
    return () async {
      log("$activity");
      final editActivity = await Navigator.pushNamed(context, '/activity_edit',
          arguments: activity.copyWith());
      if (editActivity == null) {
        return;
      } else {
        activitiesBloc.add(
            ActivitiesEditedEvent(activity: editActivity as ActivityModel));
        dateBloc.add(DateChangedMonthEvent(chosenMonth: editActivity.date));
        log("The edit activity: $editActivity");
      }
    };
  }

  _deleteActivity(activity) {
    return () {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              child: ListTile(
                  leading: Icon(Icons.delete),
                  title: Text("Delete activity"),
                  onTap: () {
                    activitiesBloc
                        .add(ActivitiesDeletedEvent(id: activity.id!));
                    dateBloc
                        .add(DateChangedMonthEvent(chosenMonth: activity.date));
                    Navigator.pop(context);
                  }),
            );
          });
      log("Long pressed");
    };
  }

  _calendarText() {
    if (dateBloc.state is DateChangedState) {
      return Text(
        "Selected day: ${(dateBloc.state as DateChangedState).dateModel.chosenDay.toString().substring(0, 10)}",
      );
    } else {
      return Text("Select a date");
    }
    // return (dateBloc.state is DateChangedState)
    //     ? Text(
    //         "Selected day: ${(dateBloc.state as DateChangedState).dateModel.chosenDay.toString().substring(0, 10)}",
    //       )
    //     : Text("Select a date");
  }
}
