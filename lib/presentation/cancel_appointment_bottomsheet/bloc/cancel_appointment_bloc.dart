import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/cancel_appointment_bottomsheet/models/cancel_appointment_model.dart';
part 'cancel_appointment_event.dart';
part 'cancel_appointment_state.dart';

/// A bloc that manages the state of a CancelAppointment according to the event that is dispatched to it.
class CancelAppointmentBloc
    extends Bloc<CancelAppointmentEvent, CancelAppointmentState> {
  CancelAppointmentBloc(CancelAppointmentState initialState)
      : super(initialState) {
    on<CancelAppointmentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CancelAppointmentInitialEvent event,
    Emitter<CancelAppointmentState> emit,
  ) async {
    emit(state.copyWith(enterReasonController: TextEditingController()));
  }
}
