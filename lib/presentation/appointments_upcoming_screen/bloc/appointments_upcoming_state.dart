// ignore_for_file: must_be_immutable

part of 'appointments_upcoming_bloc.dart';

/// Represents the state of AppointmentsUpcoming in the application.
class AppointmentsUpcomingState extends Equatable {
  AppointmentsUpcomingState({
    this.selectedDatesFromCalendar1,
    this.appointmentsUpcomingModelObj,
  });

  AppointmentsUpcomingModel? appointmentsUpcomingModelObj;

  DateTime? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        appointmentsUpcomingModelObj,
      ];
  AppointmentsUpcomingState copyWith({
    DateTime? selectedDatesFromCalendar1,
    AppointmentsUpcomingModel? appointmentsUpcomingModelObj,
  }) {
    return AppointmentsUpcomingState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      appointmentsUpcomingModelObj:
          appointmentsUpcomingModelObj ?? this.appointmentsUpcomingModelObj,
    );
  }
}
