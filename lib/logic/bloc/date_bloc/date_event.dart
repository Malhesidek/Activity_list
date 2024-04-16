// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'date_bloc.dart';

abstract class DateEvent {}

class DateChangedDayEvent extends DateEvent {
  final DateTime chosenDay;
  DateChangedDayEvent({
    required this.chosenDay,
  });
}

class DateChangedMonthEvent extends DateEvent {
  final DateTime chosenMonth;
  DateChangedMonthEvent({
    required this.chosenMonth,
  });
}
