import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_hive/data/activity/activity_model.dart';

part 'activity_edit_event.dart';
part 'activity_edit_state.dart';
part 'activity_edit_bloc.freezed.dart';

class ActivityEditBloc extends Bloc<ActivityEditEvent, ActivityEditState> {
  final ActivityModel givenActivity;

  ActivityEditBloc(this.givenActivity) : super(_Changed(activity: givenActivity)) {
    on<ActivityEditEvent>((event, emit) => event.map(
      changedImage: (event) => _changedImage(event, emit),
      changedTitle: (event) => _changedTitle(event, emit),
      changedDescription: (event) => _changedDescription(event, emit),
      changedTime: (event) => _changedTime(event, emit),
    ));
  }

  _changedImage(_ChangedImage event, Emitter<ActivityEditState> emit) {
    if (state is _Changed)
      emit(_Changed(activity: (state as _Changed).activity.copyWith(image: event.image)));
  }

  _changedTitle(_ChangedTitle event, Emitter<ActivityEditState> emit) {
    if (state is _Changed)
      emit(_Changed(activity: (state as _Changed).activity.copyWith(title: event.title)));
  }

  _changedDescription(
      _ChangedDescription event, Emitter<ActivityEditState> emit) {
    if (state is _Changed)
      emit(_Changed(activity: (state as _Changed).activity.copyWith(description: event.description)));
  }

  _changedTime(_ChangedTime event, Emitter<ActivityEditState> emit) {
    if (state is _Changed)
      emit(_Changed(activity: (state as _Changed).activity.copyWith(time: event.time)));
  }
}
