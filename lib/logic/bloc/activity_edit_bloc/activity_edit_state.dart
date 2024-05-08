part of 'activity_edit_bloc.dart';

@freezed
class ActivityEditState with _$ActivityEditState {
  const factory ActivityEditState.initial() = _Initial;
  const factory ActivityEditState.loading() = _Loading;
  const factory ActivityEditState.changed({
    required ActivityModel activity,
  }) = _Changed;
}
