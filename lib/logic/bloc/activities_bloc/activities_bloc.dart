import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'activities_event.dart';
part 'activities_state.dart';

class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {
  ActivitiesBloc() : super(ActivitiesInitial()) {
    on<ActivitiesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}