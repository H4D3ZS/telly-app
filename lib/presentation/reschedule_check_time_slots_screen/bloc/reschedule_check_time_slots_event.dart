// ignore_for_file: must_be_immutable

part of 'reschedule_check_time_slots_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RescheduleCheckTimeSlots widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RescheduleCheckTimeSlotsEvent extends Equatable {}

/// Event that is dispatched when the RescheduleCheckTimeSlots widget is first created.
class RescheduleCheckTimeSlotsInitialEvent
    extends RescheduleCheckTimeSlotsEvent {
  @override
  List<Object?> get props => [];
}
