// ignore_for_file: must_be_immutable

part of 'appointment_detail_initial_load_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentDetailInitialLoad widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentDetailInitialLoadEvent extends Equatable {}

/// Event that is dispatched when the AppointmentDetailInitialLoad widget is first created.
class AppointmentDetailInitialLoadInitialEvent
    extends AppointmentDetailInitialLoadEvent {
  @override
  List<Object?> get props => [];
}
