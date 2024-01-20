import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/appointments_completed_page/models/appointments_completed_model.dart';
part 'appointments_completed_event.dart';
part 'appointments_completed_state.dart';

/// A bloc that manages the state of a AppointmentsCompleted according to the event that is dispatched to it.
class AppointmentsCompletedBloc
    extends Bloc<AppointmentsCompletedEvent, AppointmentsCompletedState> {
  AppointmentsCompletedBloc(AppointmentsCompletedState initialState)
      : super(initialState) {
    on<AppointmentsCompletedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentsCompletedInitialEvent event,
    Emitter<AppointmentsCompletedState> emit,
  ) async {}
}
