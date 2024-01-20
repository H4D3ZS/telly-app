// ignore_for_file: must_be_immutable

part of 'appointments_cancelled_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentsCancelled widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentsCancelledEvent extends Equatable {}

/// Event that is dispatched when the AppointmentsCancelled widget is first created.
class AppointmentsCancelledInitialEvent extends AppointmentsCancelledEvent {
  @override
  List<Object?> get props => [];
}
