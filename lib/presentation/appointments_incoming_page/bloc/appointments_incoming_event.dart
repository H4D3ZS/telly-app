// ignore_for_file: must_be_immutable

part of 'appointments_incoming_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentsIncoming widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentsIncomingEvent extends Equatable {}

/// Event that is dispatched when the AppointmentsIncoming widget is first created.
class AppointmentsIncomingInitialEvent extends AppointmentsIncomingEvent {
  @override
  List<Object?> get props => [];
}
