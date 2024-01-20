import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/appointments_upcoming_additional_opt_bottomsheet/models/appointments_upcoming_additional_opt_model.dart';
part 'appointments_upcoming_additional_opt_event.dart';
part 'appointments_upcoming_additional_opt_state.dart';

/// A bloc that manages the state of a AppointmentsUpcomingAdditionalOpt according to the event that is dispatched to it.
class AppointmentsUpcomingAdditionalOptBloc extends Bloc<
    AppointmentsUpcomingAdditionalOptEvent,
    AppointmentsUpcomingAdditionalOptState> {
  AppointmentsUpcomingAdditionalOptBloc(
      AppointmentsUpcomingAdditionalOptState initialState)
      : super(initialState) {
    on<AppointmentsUpcomingAdditionalOptInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentsUpcomingAdditionalOptInitialEvent event,
    Emitter<AppointmentsUpcomingAdditionalOptState> emit,
  ) async {
    emit(state.copyWith(
      cancelAppointmentController: TextEditingController(),
    ));
  }
}
