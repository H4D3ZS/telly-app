import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/appointments_incoming_page/models/appointments_incoming_model.dart';
part 'appointments_incoming_event.dart';
part 'appointments_incoming_state.dart';

/// A bloc that manages the state of a AppointmentsIncoming according to the event that is dispatched to it.
class AppointmentsIncomingBloc
    extends Bloc<AppointmentsIncomingEvent, AppointmentsIncomingState> {
  AppointmentsIncomingBloc(AppointmentsIncomingState initialState)
      : super(initialState) {
    on<AppointmentsIncomingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentsIncomingInitialEvent event,
    Emitter<AppointmentsIncomingState> emit,
  ) async {}
}
