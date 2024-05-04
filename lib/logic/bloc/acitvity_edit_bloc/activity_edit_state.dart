// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'activity_edit_bloc.dart';

abstract class ActivityEditState {}

class ActivityEditInitial extends ActivityEditState {}

class ActivityEditChangedState extends ActivityEditState {
  final ActivityModel activity;
  ActivityEditChangedState({
    required this.activity,
  });
}

class ActivityEditImageLoadingState extends ActivityEditState {
  final ActivityModel activity;
  ActivityEditImageLoadingState({
    required this.activity,
  });
}

class ActivityEditLoadingState extends ActivityEditState {}
