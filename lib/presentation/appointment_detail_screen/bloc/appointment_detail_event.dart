// ignore_for_file: must_be_immutable

part of 'appointment_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentDetailEvent extends Equatable {}

/// Event that is dispatched when the AppointmentDetail widget is first created.
class AppointmentDetailInitialEvent extends AppointmentDetailEvent {
  @override
  List<Object?> get props => [];
}
