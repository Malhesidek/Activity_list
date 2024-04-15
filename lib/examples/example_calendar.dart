

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ExampleCalendar extends StatefulWidget{
  const ExampleCalendar({super.key});

  @override
  State<ExampleCalendar> createState() => _ExampleCalendarState();
}

class _ExampleCalendarState extends State<ExampleCalendar> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: _focusedDay,
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      startingDayOfWeek: StartingDayOfWeek.monday,
      currentDay: DateTime.now(),
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
          print("Selected day $selectedDay");
          print("My selected day $_selectedDay");
        });
      },
      selectedDayPredicate: (day) {
        return isSameDay(day, _selectedDay);
      },
      onPageChanged: (focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
          print(_focusedDay);
        });
      },
    );
  }
}