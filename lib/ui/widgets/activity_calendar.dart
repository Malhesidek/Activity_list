import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_hive/constants.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../logic/bloc/date_bloc/date_bloc.dart';

class ActivityCalendar extends StatefulWidget {
  const ActivityCalendar({super.key});

  @override
  State<ActivityCalendar> createState() => _ActivityCalendarState();
}

class _ActivityCalendarState extends State<ActivityCalendar> {
  late DateTime _focusedDay;
  late DateTime _firstDay;
  late DateTime _lastDay;
  late DateTime _selectedDay;
  late CalendarFormat _calendarFormat;

  @override
  void initState() {
    super.initState();
    _focusedDay = DateTime.now();
    _firstDay = DateTime.now().subtract(const Duration(days: 1000));
    _lastDay = DateTime.now().add(const Duration(days: 1000));
    _selectedDay = DateTime.now();
    _calendarFormat = CalendarFormat.month;
  }

  @override
  Widget build(BuildContext context) {
    final dateBloc = BlocProvider.of<DateBloc>(context);
    return BlocBuilder<DateBloc, DateState>(
      builder: (context, state) {
        return TableCalendar(
          calendarStyle: CalendarStyle(
            selectedDecoration: BoxDecoration(
              color: kColorPurple,
              shape: BoxShape.circle,
            ),
            todayDecoration: BoxDecoration(
              color: kColorLittlePurple,
              shape: BoxShape.circle,
              
            ),
          ),
          focusedDay: _focusedDay,
          firstDay: _firstDay,
          lastDay: _lastDay,
          headerStyle: HeaderStyle(formatButtonVisible: false),
          // availableCalendarFormats: const {CalendarFormat.month: 'month'},
          startingDayOfWeek: StartingDayOfWeek.monday,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) => isSameDay(_focusedDay, day),
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
                dateBloc.add(DateChangedDayEvent(chosenDay: _focusedDay));
                log("New state for the day");
              });

              // log("Selected day: $_selectedDay");
              // log("Focused day: $_focusedDay");
            }
          },
          onPageChanged: (focusedDay) {
            setState(() {
              _focusedDay = focusedDay;
              dateBloc.add(DateChangedMonthEvent(chosenMonth: _focusedDay));
            });
            // log("Selected day: $_selectedDay");
            // log("Focused day: $_focusedDay");
          },
        );
      },
    );
  }
}
