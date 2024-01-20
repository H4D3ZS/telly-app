// ignore_for_file: must_be_immutable

part of 'appointment_detail_initial_load_bloc.dart';

/// Represents the state of AppointmentDetailInitialLoad in the application.
class AppointmentDetailInitialLoadState extends Equatable {
  AppointmentDetailInitialLoadState(
      {this.appointmentDetailInitialLoadModelObj});

  AppointmentDetailInitialLoadModel? appointmentDetailInitialLoadModelObj;

  @override
  List<Object?> get props => [
        appointmentDetailInitialLoadModelObj,
      ];
  AppointmentDetailInitialLoadState copyWith(
      {AppointmentDetailInitialLoadModel?
          appointmentDetailInitialLoadModelObj}) {
    return AppointmentDetailInitialLoadState(
      appointmentDetailInitialLoadModelObj:
          appointmentDetailInitialLoadModelObj ??
              this.appointmentDetailInitialLoadModelObj,
    );
  }
}
