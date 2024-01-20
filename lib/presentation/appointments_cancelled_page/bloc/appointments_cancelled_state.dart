// ignore_for_file: must_be_immutable

part of 'appointments_cancelled_bloc.dart';

/// Represents the state of AppointmentsCancelled in the application.
class AppointmentsCancelledState extends Equatable {
  AppointmentsCancelledState({this.appointmentsCancelledModelObj});

  AppointmentsCancelledModel? appointmentsCancelledModelObj;

  @override
  List<Object?> get props => [
        appointmentsCancelledModelObj,
      ];
  AppointmentsCancelledState copyWith(
      {AppointmentsCancelledModel? appointmentsCancelledModelObj}) {
    return AppointmentsCancelledState(
      appointmentsCancelledModelObj:
          appointmentsCancelledModelObj ?? this.appointmentsCancelledModelObj,
    );
  }
}
