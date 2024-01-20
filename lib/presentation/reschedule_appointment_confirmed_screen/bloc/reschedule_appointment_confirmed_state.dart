// ignore_for_file: must_be_immutable

part of 'reschedule_appointment_confirmed_bloc.dart';

/// Represents the state of RescheduleAppointmentConfirmed in the application.
class RescheduleAppointmentConfirmedState extends Equatable {
  RescheduleAppointmentConfirmedState(
      {this.rescheduleAppointmentConfirmedModelObj});

  RescheduleAppointmentConfirmedModel? rescheduleAppointmentConfirmedModelObj;

  @override
  List<Object?> get props => [
        rescheduleAppointmentConfirmedModelObj,
      ];
  RescheduleAppointmentConfirmedState copyWith(
      {RescheduleAppointmentConfirmedModel?
          rescheduleAppointmentConfirmedModelObj}) {
    return RescheduleAppointmentConfirmedState(
      rescheduleAppointmentConfirmedModelObj:
          rescheduleAppointmentConfirmedModelObj ??
              this.rescheduleAppointmentConfirmedModelObj,
    );
  }
}
