// ignore_for_file: public_member_api_docs, sort_constructors_first
class Date {
  DateTime? chosenDay;
  DateTime? chosenMonth;
  Map<String, int>? activitiesNumber;

  Date({
    this.chosenDay,
    this.chosenMonth,
    this.activitiesNumber,
  });

  Date copyWith({
    Map<String, int>? activitiesNumber,
  }) {
    return Date(
      chosenDay: chosenDay ?? this.chosenDay,
      chosenMonth: chosenMonth ?? this.chosenMonth,
      activitiesNumber: activitiesNumber ?? this.activitiesNumber,
    );
  }
}
