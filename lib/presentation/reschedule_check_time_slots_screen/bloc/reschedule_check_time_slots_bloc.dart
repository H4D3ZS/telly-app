import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/reschedule_check_time_slots_screen/models/reschedule_check_time_slots_model.dart';
part 'reschedule_check_time_slots_event.dart';
part 'reschedule_check_time_slots_state.dart';

/// A bloc that manages the state of a RescheduleCheckTimeSlots according to the event that is dispatched to it.
class RescheduleCheckTimeSlotsBloc
    extends Bloc<RescheduleCheckTimeSlotsEvent, RescheduleCheckTimeSlotsState> {
  RescheduleCheckTimeSlotsBloc(RescheduleCheckTimeSlotsState initialState)
      : super(initialState) {
    on<RescheduleCheckTimeSlotsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RescheduleCheckTimeSlotsInitialEvent event,
    Emitter<RescheduleCheckTimeSlotsState> emit,
  ) async {
    emit(state.copyWith(
        takenSlotEditTextController: TextEditingController(),
        availableSlotEditTextController: TextEditingController(),
        takenSlotEditTextController1: TextEditingController(),
        takenSlotEditTextController2: TextEditingController()));
  }
}
