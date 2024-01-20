// ignore_for_file: must_be_immutable

part of 'appointments_upcoming_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentsUpcomingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentsUpcomingOneEvent extends Equatable {}

/// Event that is dispatched when the AppointmentsUpcomingOne widget is first created.
class AppointmentsUpcomingOneInitialEvent extends AppointmentsUpcomingOneEvent {
  @override
  List<Object?> get props => [];
}
