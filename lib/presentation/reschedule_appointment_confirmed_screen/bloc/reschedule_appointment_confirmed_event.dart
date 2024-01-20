// ignore_for_file: must_be_immutable

part of 'reschedule_appointment_confirmed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RescheduleAppointmentConfirmed widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RescheduleAppointmentConfirmedEvent extends Equatable {}

/// Event that is dispatched when the RescheduleAppointmentConfirmed widget is first created.
class RescheduleAppointmentConfirmedInitialEvent
    extends RescheduleAppointmentConfirmedEvent {
  @override
  List<Object?> get props => [];
}
