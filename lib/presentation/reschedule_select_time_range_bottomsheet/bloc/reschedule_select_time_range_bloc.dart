import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/reschedule_select_time_range_bottomsheet/models/reschedule_select_time_range_model.dart';
part 'reschedule_select_time_range_event.dart';
part 'reschedule_select_time_range_state.dart';

/// A bloc that manages the state of a RescheduleSelectTimeRange according to the event that is dispatched to it.
class RescheduleSelectTimeRangeBloc extends Bloc<RescheduleSelectTimeRangeEvent,
    RescheduleSelectTimeRangeState> {
  RescheduleSelectTimeRangeBloc(RescheduleSelectTimeRangeState initialState)
      : super(initialState) {
    on<RescheduleSelectTimeRangeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RescheduleSelectTimeRangeInitialEvent event,
    Emitter<RescheduleSelectTimeRangeState> emit,
  ) async {}
}
