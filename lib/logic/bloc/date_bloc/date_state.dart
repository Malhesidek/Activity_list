// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'date_bloc.dart';

abstract class DateState {}

class DateInitial extends DateState {
  final DateModel dateModel;
  DateInitial({
    required this.dateModel,
  });
}

class DateChangedState extends DateState {
  final DateModel dateModel;
  DateChangedState({
    required this.dateModel,
  });
}
