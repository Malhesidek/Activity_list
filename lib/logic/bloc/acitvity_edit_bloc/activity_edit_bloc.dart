import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:memory_hive/data/activity/activity_model.dart';
import 'package:meta/meta.dart';

part 'activity_edit_event.dart';
part 'activity_edit_state.dart';

class ActivityEditBloc extends Bloc<ActivityEditEvent, ActivityEditState> {
  ActivityEditBloc()
      : super(ActivityEditChangedState(
            activity:
                ActivityModel(date: DateTime.now(), title: "Blank activity"))) {
    on<ActivityChangedImageEvent>(_changedImage);
    on<ActivityChangedTitleEvent>(_changedTitle);
    on<ActivityChangedDescriptionEvent>(_changedDescription);
    on<ActivityChangedTimeEvent>(_changedTime);
  }

  _changedImage(
      ActivityChangedImageEvent event, Emitter<ActivityEditState> emit)  {
    var activity = (state as ActivityEditChangedState).activity;
    emit(ActivityEditImageLoadingState(activity: activity));
    activity.image = event.image;
    emit(ActivityEditChangedState(activity: activity));
  }

  _changedTitle(ActivityChangedTitleEvent event, Emitter<ActivityEditState> emit){
    final activity = (state as ActivityEditChangedState).activity;
    emit(ActivityEditChangedState(activity: activity.copyWith(title: event.title)));
  }

  _changedDescription(ActivityChangedDescriptionEvent event, Emitter<ActivityEditState> emit){
    final activity = (state as ActivityEditChangedState).activity;
    emit(ActivityEditChangedState(activity: activity.copyWith(description: event.description)));
  }

  _changedTime(ActivityChangedTimeEvent event, Emitter<ActivityEditState> emit){
    final activity = (state as ActivityEditChangedState).activity;
    emit(ActivityEditChangedState(activity: activity.copyWith(time: event.time)));
  }
}
