// ignore_for_file: must_be_immutable

part of 'reschedule_select_day_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RescheduleSelectDay widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RescheduleSelectDayEvent extends Equatable {}

/// Event that is dispatched when the RescheduleSelectDay widget is first created.
class RescheduleSelectDayInitialEvent extends RescheduleSelectDayEvent {
  @override
  List<Object?> get props => [];
}
