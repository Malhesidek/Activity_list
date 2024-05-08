import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/logic/bloc/activity_edit_bloc/activity_edit_bloc.dart';

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
                initialTime: _setInitialTime());
            log("Selected time: $selectedTime");
            BlocProvider.of<ActivityEditBloc>(context)
                .add(ActivityEditEvent.changedTime(time: selectedTime));
            // log("Selected time state: ${state.activity.time}");
          },
          child: Text(
            _showTime(),
            style: TextStyle(
              color: kColorWhite,
            ),
          ),
        );
      },
    );
  }

  // Як тут визначити стейт, якщо функція вже знаходиться поза віджетом
  _showTime() {
    final activityState = context.read<ActivityEditBloc>().state.maybeWhen(
        changed: (activity) => activity.time != null
            ? "${activity.time!.hour}:${activity.time!.minute.toString().length == 1 ? "0${activity.time!.minute}" : activity.time!.minute}"
            : "Set Time",
        orElse: () {});
    return activityState;
  }

  _setInitialTime(){
    final activityState = context.read<ActivityEditBloc>().state.maybeWhen(
        changed: (activity) => activity.time != null
                    ? TimeOfDay(
                        hour: activity.time!.hour,
                        minute: activity.time!.minute)
                    : TimeOfDay(hour: 12, minute: 00),
        orElse: () {});
    return activityState;
  }
}
