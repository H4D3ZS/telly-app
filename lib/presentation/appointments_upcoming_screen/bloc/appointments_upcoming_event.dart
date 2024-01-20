// ignore_for_file: must_be_immutable

part of 'appointments_upcoming_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentsUpcoming widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentsUpcomingEvent extends Equatable {}

/// Event that is dispatched when the AppointmentsUpcoming widget is first created.
class AppointmentsUpcomingInitialEvent extends AppointmentsUpcomingEvent {
  @override
  List<Object?> get props => [];
}
