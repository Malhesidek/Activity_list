part of 'activities_bloc.dart';

abstract class ActivitiesState {}

class ActivitiesInitial extends ActivitiesState {
  final List<ActivityModel> activities;
  ActivitiesInitial({
    required this.activities,
  });
}

class ActivitiesChangedState extends ActivitiesState {
  final List<ActivityModel> activities;
  ActivitiesChangedState({
    required this.activities,
  });
}

class ActivitiesLoadingState extends ActivitiesState {}
