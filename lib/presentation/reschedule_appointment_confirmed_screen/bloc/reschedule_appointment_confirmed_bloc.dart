import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/reschedule_appointment_confirmed_screen/models/reschedule_appointment_confirmed_model.dart';
part 'reschedule_appointment_confirmed_event.dart';
part 'reschedule_appointment_confirmed_state.dart';

/// A bloc that manages the state of a RescheduleAppointmentConfirmed according to the event that is dispatched to it.
class RescheduleAppointmentConfirmedBloc extends Bloc<
    RescheduleAppointmentConfirmedEvent, RescheduleAppointmentConfirmedState> {
  RescheduleAppointmentConfirmedBloc(
      RescheduleAppointmentConfirmedState initialState)
      : super(initialState) {
    on<RescheduleAppointmentConfirmedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RescheduleAppointmentConfirmedInitialEvent event,
    Emitter<RescheduleAppointmentConfirmedState> emit,
  ) async {}
}
