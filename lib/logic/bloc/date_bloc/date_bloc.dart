import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:memory_hive/data/date/date_data_provider.dart';
import 'package:memory_hive/data/date/date_model.dart';
import 'package:memory_hive/data/date/date_repo.dart';

part 'date_event.dart';
part 'date_state.dart';

class DateBloc extends Bloc<DateEvent, DateState> {
  final _dateRepo = DateRepo(dateDataProvider: DateDataProvider());

  DateBloc()
      : super(DateInitial(
            dateModel: DateModel(
                chosenDay: DateTime.now(), chosenMonth: DateTime.now()))) {
    on<DateChangedDayEvent>(_onChangedDate);
    on<DateChangedMonthEvent>(_onChangedMonth);
  }

  _onChangedDate(DateChangedDayEvent event, Emitter<DateState> emit) async {
    final newDate = event.chosenDay;
    final currentState = state;
    if (currentState is DateChangedState) {
      emit(DateChangedState(
          dateModel: currentState.dateModel.copyWith(chosenDay: newDate)));
    } else if (currentState is DateInitial) {
      emit(DateChangedState(
          dateModel: currentState.dateModel.copyWith(chosenDay: newDate)));
    }
    log("$state");
  }

  _onChangedMonth(DateChangedMonthEvent event, Emitter<DateState> emit) async {
    final newMonth = event.chosenMonth;
    final currentState = state;
    final activitiesNumber = await _dateRepo.fetchActivitiesByMonth(newMonth);
    if (currentState is DateChangedState) {
      emit(DateChangedState(
          dateModel: currentState.dateModel.copyWith(chosenMonth: newMonth, activitiesNumber: activitiesNumber)));
    } else if (currentState is DateInitial) {
      emit(DateChangedState(
          dateModel: currentState.dateModel.copyWith(chosenMonth: newMonth, activitiesNumber: activitiesNumber)));
    }
    log("$state");
  }
}
