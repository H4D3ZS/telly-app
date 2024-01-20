import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:telly/presentation/reschedule_select_day_screen/models/reschedule_select_day_model.dart';
part 'reschedule_select_day_event.dart';
part 'reschedule_select_day_state.dart';

/// A bloc that manages the state of a RescheduleSelectDay according to the event that is dispatched to it.
class RescheduleSelectDayBloc
    extends Bloc<RescheduleSelectDayEvent, RescheduleSelectDayState> {
  RescheduleSelectDayBloc(RescheduleSelectDayState initialState)
      : super(initialState) {
    on<RescheduleSelectDayInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RescheduleSelectDayInitialEvent event,
    Emitter<RescheduleSelectDayState> emit,
  ) async {}
}
