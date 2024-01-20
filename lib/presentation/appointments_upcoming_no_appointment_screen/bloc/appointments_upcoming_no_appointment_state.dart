// ignore_for_file: must_be_immutable

part of 'appointments_upcoming_no_appointment_bloc.dart';

/// Represents the state of AppointmentsUpcomingNoAppointment in the application.
class AppointmentsUpcomingNoAppointmentState extends Equatable {
  AppointmentsUpcomingNoAppointmentState({
    this.selectedDatesFromCalendar1,
    this.appointmentsUpcomingNoAppointmentModelObj,
  });

  AppointmentsUpcomingNoAppointmentModel?
      appointmentsUpcomingNoAppointmentModelObj;

  DateTime? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        appointmentsUpcomingNoAppointmentModelObj,
      ];
  AppointmentsUpcomingNoAppointmentState copyWith({
    DateTime? selectedDatesFromCalendar1,
    AppointmentsUpcomingNoAppointmentModel?
        appointmentsUpcomingNoAppointmentModelObj,
  }) {
    return AppointmentsUpcomingNoAppointmentState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      appointmentsUpcomingNoAppointmentModelObj:
          appointmentsUpcomingNoAppointmentModelObj ??
              this.appointmentsUpcomingNoAppointmentModelObj,
    );
  }
}
