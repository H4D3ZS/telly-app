import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/appointments_cancelled_tab_container_screen/models/appointments_cancelled_tab_container_model.dart';
part 'appointments_cancelled_tab_container_event.dart';
part 'appointments_cancelled_tab_container_state.dart';

/// A bloc that manages the state of a AppointmentsCancelledTabContainer according to the event that is dispatched to it.
class AppointmentsCancelledTabContainerBloc extends Bloc<
    AppointmentsCancelledTabContainerEvent,
    AppointmentsCancelledTabContainerState> {
  AppointmentsCancelledTabContainerBloc(
      AppointmentsCancelledTabContainerState initialState)
      : super(initialState) {
    on<AppointmentsCancelledTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentsCancelledTabContainerInitialEvent event,
    Emitter<AppointmentsCancelledTabContainerState> emit,
  ) async {}
}
