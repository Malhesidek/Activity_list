part of 'activity_edit_bloc.dart';

abstract class ActivityEditEvent {}

class ActivityChangedImageEvent extends ActivityEditEvent {
  final Uint8List? image;
  ActivityChangedImageEvent({
    this.image,
  });
  
}

class ActivityChangedTitleEvent extends ActivityEditEvent {
  final String? title;
  ActivityChangedTitleEvent({
    this.title,
  });
}

class ActivityChangedDescriptionEvent extends ActivityEditEvent {
  final String? description;
  ActivityChangedDescriptionEvent({
    this.description,
  });
}

class ActivityChangedTimeEvent extends ActivityEditEvent {
  final TimeOfDay? time;
  ActivityChangedTimeEvent({
    this.time,
  });
}
