import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/appointments_cancelled_page/models/appointments_cancelled_model.dart';
part 'appointments_cancelled_event.dart';
part 'appointments_cancelled_state.dart';

/// A bloc that manages the state of a AppointmentsCancelled according to the event that is dispatched to it.
class AppointmentsCancelledBloc
    extends Bloc<AppointmentsCancelledEvent, AppointmentsCancelledState> {
  AppointmentsCancelledBloc(AppointmentsCancelledState initialState)
      : super(initialState) {
    on<AppointmentsCancelledInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentsCancelledInitialEvent event,
    Emitter<AppointmentsCancelledState> emit,
  ) async {}
}
