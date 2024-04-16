// ignore_for_file: public_member_api_docs, sort_constructors_first
class DateModel {
  DateTime? chosenDay;
  DateTime? chosenMonth;
  Map<DateTime, int>? activitiesNumber;

  DateModel({
    this.chosenDay,
    this.chosenMonth,
    this.activitiesNumber,
  });

  DateModel copyWith({
  DateTime? chosenDay,
  DateTime? chosenMonth,
  Map<DateTime, int>? activitiesNumber,
}) {
  return DateModel(
    chosenDay: chosenDay ?? this.chosenDay,
    chosenMonth: chosenMonth ?? this.chosenMonth,
    activitiesNumber: activitiesNumber ?? this.activitiesNumber,
  );
}
}
