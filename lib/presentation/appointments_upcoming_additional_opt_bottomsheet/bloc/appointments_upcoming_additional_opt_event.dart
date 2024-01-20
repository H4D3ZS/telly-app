// ignore_for_file: must_be_immutable

part of 'appointments_upcoming_additional_opt_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentsUpcomingAdditionalOpt widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentsUpcomingAdditionalOptEvent extends Equatable {}

/// Event that is dispatched when the AppointmentsUpcomingAdditionalOpt widget is first created.
class AppointmentsUpcomingAdditionalOptInitialEvent
    extends AppointmentsUpcomingAdditionalOptEvent {
  @override
  List<Object?> get props => [];
}
