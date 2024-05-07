import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_hive/data/activity/activity_data_provider.dart';
import 'package:memory_hive/data/activity/activity_model.dart';
import 'package:memory_hive/data/activity/activity_repo.dart';
import 'package:memory_hive/logic/bloc/date_bloc/date_bloc.dart';

part 'activities_event.dart';
part 'activities_state.dart';


class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {
  final _activitiesRepo =
      ActivityRepo(activityDataProvider: ActivityDataProvider());
  final DateBloc dateBloc;
  late StreamSubscription dateSubscription;

  ActivitiesBloc(this.dateBloc) : super(ActivitiesLoadingState()) {
    on<ActivitiesFetchByDayEvent>(_onChangedDay);
    on<ActivitiesInsertedEvent>(_onInsertedActivity);
    on<ActivitiesEditedEvent>(_onEditedActivity);
    on<ActivitiesDeletedEvent>(_onDeletedActivity);
    dateSubscription = dateBloc.stream.listen((dateState) {
      if (dateState is DateChangedState) {
        add(ActivitiesFetchByDayEvent(day: dateState.dateModel.chosenDay!));
        // log("AvtivitiesBloc: $state");
      }
    });
  }

  _onChangedDay(
      ActivitiesFetchByDayEvent event, Emitter<ActivitiesState> emit) async {
    emit(ActivitiesLoadingState());
    final activities = await _activitiesRepo.fetchActivitiesByDay(event.day);
    emit(ActivitiesChangedState(activities: activities));
  }

  _onInsertedActivity(
      ActivitiesInsertedEvent event, Emitter<ActivitiesState> emit) async {
    emit(ActivitiesLoadingState());
    final dateState = dateBloc.state as DateChangedState;
    final date = dateState.dateModel.chosenDay!;
    await _activitiesRepo.insertActivity(event.activity);
    final activities = await _activitiesRepo.fetchActivitiesByDay(date);
    emit(ActivitiesChangedState(activities: activities));
  }

  _onEditedActivity(
      ActivitiesEditedEvent event, Emitter<ActivitiesState> emit) async {
    emit(ActivitiesLoadingState());
    final dateState = dateBloc.state as DateChangedState;
    final date = dateState.dateModel.chosenDay!;
    await _activitiesRepo.editActivity(event.activity);
    final activities = await _activitiesRepo.fetchActivitiesByDay(date);
    emit(ActivitiesChangedState(activities: activities));
  }

  _onDeletedActivity(
      ActivitiesDeletedEvent event, Emitter<ActivitiesState> emit) async {
    emit(ActivitiesLoadingState());
    final dateState = dateBloc.state as DateChangedState;
    final date = dateState.dateModel.chosenDay!;
    await _activitiesRepo.deleteActivity(event.id);
    final activities = await _activitiesRepo.fetchActivitiesByDay(date);
    emit(ActivitiesChangedState(activities: activities));
  }
}
