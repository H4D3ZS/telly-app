// ignore_for_file: must_be_immutable

part of 'appointments_cancelled_tab_container_bloc.dart';

/// Represents the state of AppointmentsCancelledTabContainer in the application.
class AppointmentsCancelledTabContainerState extends Equatable {
  AppointmentsCancelledTabContainerState(
      {this.appointmentsCancelledTabContainerModelObj});

  AppointmentsCancelledTabContainerModel?
      appointmentsCancelledTabContainerModelObj;

  @override
  List<Object?> get props => [
        appointmentsCancelledTabContainerModelObj,
      ];
  AppointmentsCancelledTabContainerState copyWith(
      {AppointmentsCancelledTabContainerModel?
          appointmentsCancelledTabContainerModelObj}) {
    return AppointmentsCancelledTabContainerState(
      appointmentsCancelledTabContainerModelObj:
          appointmentsCancelledTabContainerModelObj ??
              this.appointmentsCancelledTabContainerModelObj,
    );
  }
}
