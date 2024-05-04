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
              // Calendar section not in the scroll area
              BlocBuilder<DateBloc, DateState>(
                builder: (context, state) {
                  return ExpansionTile(
                    title: dateBloc.state is DateChangedState
                        ? Text((dateBloc.state as DateChangedState)
                            .dateModel
                            .chosenDay
                            .toString()
                            .substring(0, 10))
                        : Text("Select a date"),
                    children: [
                      ActivityCalendar(),
                    ],
                    maintainState: true,
                  );
                },
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                          height:
                              20), // Add some spacing between calendar and cards
                      BlocBuilder<ActivitiesBloc, ActivitiesState>(
                        builder: (context, state) {
                          if (state is ActivitiesChangedState) {
                            return Column(
                              children: state.activities.map((activity) {
                                return ActivityCard(activity: activity);
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
}





// ActivityCard(
//                 activity: ActivityModel(
//                     date: DateTime.now(),
//                     title: "Title",
//                     description: "Description",
//                     time: TimeOfDay(hour: 12, minute: 00))),
