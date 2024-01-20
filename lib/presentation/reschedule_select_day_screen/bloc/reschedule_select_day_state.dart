// ignore_for_file: must_be_immutable

part of 'reschedule_select_day_bloc.dart';

/// Represents the state of RescheduleSelectDay in the application.
class RescheduleSelectDayState extends Equatable {
  RescheduleSelectDayState({
    this.selectedDatesFromCalendar1,
    this.rescheduleSelectDayModelObj,
  });

  RescheduleSelectDayModel? rescheduleSelectDayModelObj;

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        rescheduleSelectDayModelObj,
      ];
  RescheduleSelectDayState copyWith({
    List<DateTime?>? selectedDatesFromCalendar1,
    RescheduleSelectDayModel? rescheduleSelectDayModelObj,
  }) {
    return RescheduleSelectDayState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      rescheduleSelectDayModelObj:
          rescheduleSelectDayModelObj ?? this.rescheduleSelectDayModelObj,
    );
  }
}
