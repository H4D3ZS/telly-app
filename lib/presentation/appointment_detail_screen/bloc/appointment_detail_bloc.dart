import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/appointment_detail_screen/models/appointment_detail_model.dart';
part 'appointment_detail_event.dart';
part 'appointment_detail_state.dart';

/// A bloc that manages the state of a AppointmentDetail according to the event that is dispatched to it.
class AppointmentDetailBloc
    extends Bloc<AppointmentDetailEvent, AppointmentDetailState> {
  AppointmentDetailBloc(AppointmentDetailState initialState)
      : super(initialState) {
    on<AppointmentDetailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentDetailInitialEvent event,
    Emitter<AppointmentDetailState> emit,
  ) async {}
}
