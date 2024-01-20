// ignore_for_file: must_be_immutable

part of 'appointments_upcoming_one_bloc.dart';

/// Represents the state of AppointmentsUpcomingOne in the application.
class AppointmentsUpcomingOneState extends Equatable {
  AppointmentsUpcomingOneState({
    this.selectedDatesFromCalendar1,
    this.appointmentsUpcomingOneModelObj,
  });

  AppointmentsUpcomingOneModel? appointmentsUpcomingOneModelObj;

  DateTime? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        appointmentsUpcomingOneModelObj,
      ];
  AppointmentsUpcomingOneState copyWith({
    DateTime? selectedDatesFromCalendar1,
    AppointmentsUpcomingOneModel? appointmentsUpcomingOneModelObj,
  }) {
    return AppointmentsUpcomingOneState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      appointmentsUpcomingOneModelObj: appointmentsUpcomingOneModelObj ??
          this.appointmentsUpcomingOneModelObj,
    );
  }
}
