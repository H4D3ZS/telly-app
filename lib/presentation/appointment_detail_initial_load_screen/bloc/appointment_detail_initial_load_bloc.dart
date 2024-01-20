import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/appointment_detail_initial_load_screen/models/appointment_detail_initial_load_model.dart';
part 'appointment_detail_initial_load_event.dart';
part 'appointment_detail_initial_load_state.dart';

/// A bloc that manages the state of a AppointmentDetailInitialLoad according to the event that is dispatched to it.
class AppointmentDetailInitialLoadBloc extends Bloc<
    AppointmentDetailInitialLoadEvent, AppointmentDetailInitialLoadState> {
  AppointmentDetailInitialLoadBloc(
      AppointmentDetailInitialLoadState initialState)
      : super(initialState) {
    on<AppointmentDetailInitialLoadInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentDetailInitialLoadInitialEvent event,
    Emitter<AppointmentDetailInitialLoadState> emit,
  ) async {}
}
