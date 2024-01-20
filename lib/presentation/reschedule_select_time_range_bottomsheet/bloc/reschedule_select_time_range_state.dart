// ignore_for_file: must_be_immutable

part of 'reschedule_select_time_range_bloc.dart';

/// Represents the state of RescheduleSelectTimeRange in the application.
class RescheduleSelectTimeRangeState extends Equatable {
  RescheduleSelectTimeRangeState({this.rescheduleSelectTimeRangeModelObj});

  RescheduleSelectTimeRangeModel? rescheduleSelectTimeRangeModelObj;

  @override
  List<Object?> get props => [
        rescheduleSelectTimeRangeModelObj,
      ];
  RescheduleSelectTimeRangeState copyWith(
      {RescheduleSelectTimeRangeModel? rescheduleSelectTimeRangeModelObj}) {
    return RescheduleSelectTimeRangeState(
      rescheduleSelectTimeRangeModelObj: rescheduleSelectTimeRangeModelObj ??
          this.rescheduleSelectTimeRangeModelObj,
    );
  }
}
