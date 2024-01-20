// ignore_for_file: must_be_immutable

part of 'appointments_upcoming_no_appointment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentsUpcomingNoAppointment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentsUpcomingNoAppointmentEvent extends Equatable {}

/// Event that is dispatched when the AppointmentsUpcomingNoAppointment widget is first created.
class AppointmentsUpcomingNoAppointmentInitialEvent
    extends AppointmentsUpcomingNoAppointmentEvent {
  @override
  List<Object?> get props => [];
}
