// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'activities_bloc.dart';

abstract class ActivitiesEvent {}

class ActivitiesFetchByDayEvent extends ActivitiesEvent {
  final DateTime day;
  ActivitiesFetchByDayEvent({
    required this.day,
  });
}

class ActivitiesInsertedEvent extends ActivitiesEvent {
  final ActivityModel activity;
  ActivitiesInsertedEvent({required this.activity});
}

class ActivitiesEditedEvent extends ActivitiesEvent {
  final ActivityModel activity;
  ActivitiesEditedEvent({required this.activity});
}

class ActivitiesDeletedEvent extends ActivitiesEvent {
  final int id;
  ActivitiesDeletedEvent({required this.id});
}
