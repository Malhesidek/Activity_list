import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/logic/bloc/acitvity_edit_bloc/activity_edit_bloc.dart';

class ButtonSetTime extends StatefulWidget {
  const ButtonSetTime({super.key});

  @override
  State<ButtonSetTime> createState() => _ButtonSetTimeState();
}

class _ButtonSetTimeState extends State<ButtonSetTime> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityEditBloc, ActivityEditState>(
      builder: (context, state) {
        return OutlinedButton(
          style: ButtonStyle(
              alignment: Alignment.center,
              backgroundColor: MaterialStateProperty.all(kColorPurple)),
          onPressed: () async {
            final selectedTime = await showTimePicker(
                context: context,
                builder: (context, child) => Column(
                      children: [
                        child!,
                        OutlinedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(kColorPurple)),
                            onPressed: () {
                              Navigator.of(context).pop(null);
                            },
                            child: Text("Reset time", style: kTextAppTitle))
                      ],
                    ),
                initialTime: state.activity.time != null
                    ? TimeOfDay(
                        hour: state.activity.time!.hour,
                        minute: state.activity.time!.minute)
                    : TimeOfDay(hour: 12, minute: 00));
            log("Selected time: $selectedTime");
            BlocProvider.of<ActivityEditBloc>(context)
                .add(ActivityChangedTimeEvent(time: selectedTime));
            log("Selected time state: ${state.activity.time}");
          },
          child: Text(
            (state as ActivityEditChangedState).activity.time != null
                ? "${(state as ActivityEditChangedState).activity.time!.hour}:${(state as ActivityEditChangedState).activity.time!.minute.toString().length == 1 ? "0${(state as ActivityEditChangedState).activity.time!.minute}" : (state as ActivityEditChangedState).activity.time!.minute}"
                : "Set Time",
            style: TextStyle(
              color: kColorWhite,
            ),
          ),
        );
      },
    );
  }
}
