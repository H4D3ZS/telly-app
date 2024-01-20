import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:telly/presentation/appointments_upcoming_no_appointment_screen/models/appointments_upcoming_no_appointment_model.dart';
part 'appointments_upcoming_no_appointment_event.dart';
part 'appointments_upcoming_no_appointment_state.dart';

/// A bloc that manages the state of a AppointmentsUpcomingNoAppointment according to the event that is dispatched to it.
class AppointmentsUpcomingNoAppointmentBloc extends Bloc<
    AppointmentsUpcomingNoAppointmentEvent,
    AppointmentsUpcomingNoAppointmentState> {
  AppointmentsUpcomingNoAppointmentBloc(
      AppointmentsUpcomingNoAppointmentState initialState)
      : super(initialState) {
    on<AppointmentsUpcomingNoAppointmentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentsUpcomingNoAppointmentInitialEvent event,
    Emitter<AppointmentsUpcomingNoAppointmentState> emit,
  ) async {}
}
