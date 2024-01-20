// ignore_for_file: must_be_immutable

part of 'appointments_completed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentsCompleted widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentsCompletedEvent extends Equatable {}

/// Event that is dispatched when the AppointmentsCompleted widget is first created.
class AppointmentsCompletedInitialEvent extends AppointmentsCompletedEvent {
  @override
  List<Object?> get props => [];
}
