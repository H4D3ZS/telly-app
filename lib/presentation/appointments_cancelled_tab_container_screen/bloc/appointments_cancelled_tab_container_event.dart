// ignore_for_file: must_be_immutable

part of 'appointments_cancelled_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentsCancelledTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentsCancelledTabContainerEvent extends Equatable {}

/// Event that is dispatched when the AppointmentsCancelledTabContainer widget is first created.
class AppointmentsCancelledTabContainerInitialEvent
    extends AppointmentsCancelledTabContainerEvent {
  @override
  List<Object?> get props => [];
}
