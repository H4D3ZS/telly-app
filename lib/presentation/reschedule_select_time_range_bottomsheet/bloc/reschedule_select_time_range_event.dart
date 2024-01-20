// ignore_for_file: must_be_immutable

part of 'reschedule_select_time_range_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RescheduleSelectTimeRange widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RescheduleSelectTimeRangeEvent extends Equatable {}

/// Event that is dispatched when the RescheduleSelectTimeRange widget is first created.
class RescheduleSelectTimeRangeInitialEvent
    extends RescheduleSelectTimeRangeEvent {
  @override
  List<Object?> get props => [];
}
