part of 'activity_edit_bloc.dart';

@freezed
class ActivityEditEvent with _$ActivityEditEvent {
  const factory ActivityEditEvent.changedImage({Uint8List? image}) =
      _ChangedImage;
  const factory ActivityEditEvent.changedTitle({String? title}) = _ChangedTitle;
  const factory ActivityEditEvent.changedDescription({String? description}) =
      _ChangedDescription;
  const factory ActivityEditEvent.changedTime({TimeOfDay? time}) = _ChangedTime;
}
