// ignore_for_file: must_be_immutable

part of 'appointments_upcoming_additional_opt_bloc.dart';

/// Represents the state of AppointmentsUpcomingAdditionalOpt in the application.
class AppointmentsUpcomingAdditionalOptState extends Equatable {
  AppointmentsUpcomingAdditionalOptState({
    this.cancelAppointmentController,
    this.appointmentsUpcomingAdditionalOptModelObj,
  });

  TextEditingController? cancelAppointmentController;

  AppointmentsUpcomingAdditionalOptModel?
      appointmentsUpcomingAdditionalOptModelObj;

  @override
  List<Object?> get props => [
        cancelAppointmentController,
        appointmentsUpcomingAdditionalOptModelObj,
      ];
  AppointmentsUpcomingAdditionalOptState copyWith({
    TextEditingController? cancelAppointmentController,
    AppointmentsUpcomingAdditionalOptModel?
        appointmentsUpcomingAdditionalOptModelObj,
  }) {
    return AppointmentsUpcomingAdditionalOptState(
      cancelAppointmentController:
          cancelAppointmentController ?? this.cancelAppointmentController,
      appointmentsUpcomingAdditionalOptModelObj:
          appointmentsUpcomingAdditionalOptModelObj ??
              this.appointmentsUpcomingAdditionalOptModelObj,
    );
  }
}
