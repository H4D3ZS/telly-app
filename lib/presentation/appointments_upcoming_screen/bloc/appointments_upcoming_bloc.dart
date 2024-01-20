import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:telly/presentation/appointments_upcoming_screen/models/appointments_upcoming_model.dart';
part 'appointments_upcoming_event.dart';
part 'appointments_upcoming_state.dart';

/// A bloc that manages the state of a AppointmentsUpcoming according to the event that is dispatched to it.
class AppointmentsUpcomingBloc
    extends Bloc<AppointmentsUpcomingEvent, AppointmentsUpcomingState> {
  AppointmentsUpcomingBloc(AppointmentsUpcomingState initialState)
      : super(initialState) {
    on<AppointmentsUpcomingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentsUpcomingInitialEvent event,
    Emitter<AppointmentsUpcomingState> emit,
  ) async {}
}
