// ignore_for_file: must_be_immutable

part of 'appointments_incoming_bloc.dart';

/// Represents the state of AppointmentsIncoming in the application.
class AppointmentsIncomingState extends Equatable {
  AppointmentsIncomingState({this.appointmentsIncomingModelObj});

  AppointmentsIncomingModel? appointmentsIncomingModelObj;

  @override
  List<Object?> get props => [
        appointmentsIncomingModelObj,
      ];
  AppointmentsIncomingState copyWith(
      {AppointmentsIncomingModel? appointmentsIncomingModelObj}) {
    return AppointmentsIncomingState(
      appointmentsIncomingModelObj:
          appointmentsIncomingModelObj ?? this.appointmentsIncomingModelObj,
    );
  }
}
