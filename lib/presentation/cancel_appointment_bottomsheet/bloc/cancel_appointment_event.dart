// ignore_for_file: must_be_immutable

part of 'cancel_appointment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CancelAppointment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CancelAppointmentEvent extends Equatable {}

/// Event that is dispatched when the CancelAppointment widget is first created.
class CancelAppointmentInitialEvent extends CancelAppointmentEvent {
  @override
  List<Object?> get props => [];
}
