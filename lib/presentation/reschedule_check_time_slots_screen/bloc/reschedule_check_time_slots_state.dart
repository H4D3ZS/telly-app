// ignore_for_file: must_be_immutable

part of 'reschedule_check_time_slots_bloc.dart';

/// Represents the state of RescheduleCheckTimeSlots in the application.
class RescheduleCheckTimeSlotsState extends Equatable {
  RescheduleCheckTimeSlotsState({
    this.takenSlotEditTextController,
    this.availableSlotEditTextController,
    this.takenSlotEditTextController1,
    this.takenSlotEditTextController2,
    this.rescheduleCheckTimeSlotsModelObj,
  });

  TextEditingController? takenSlotEditTextController;

  TextEditingController? availableSlotEditTextController;

  TextEditingController? takenSlotEditTextController1;

  TextEditingController? takenSlotEditTextController2;

  RescheduleCheckTimeSlotsModel? rescheduleCheckTimeSlotsModelObj;

  @override
  List<Object?> get props => [
        takenSlotEditTextController,
        availableSlotEditTextController,
        takenSlotEditTextController1,
        takenSlotEditTextController2,
        rescheduleCheckTimeSlotsModelObj,
      ];
  RescheduleCheckTimeSlotsState copyWith({
    TextEditingController? takenSlotEditTextController,
    TextEditingController? availableSlotEditTextController,
    TextEditingController? takenSlotEditTextController1,
    TextEditingController? takenSlotEditTextController2,
    RescheduleCheckTimeSlotsModel? rescheduleCheckTimeSlotsModelObj,
  }) {
    return RescheduleCheckTimeSlotsState(
      takenSlotEditTextController:
          takenSlotEditTextController ?? this.takenSlotEditTextController,
      availableSlotEditTextController: availableSlotEditTextController ??
          this.availableSlotEditTextController,
      takenSlotEditTextController1:
          takenSlotEditTextController1 ?? this.takenSlotEditTextController1,
      takenSlotEditTextController2:
          takenSlotEditTextController2 ?? this.takenSlotEditTextController2,
      rescheduleCheckTimeSlotsModelObj: rescheduleCheckTimeSlotsModelObj ??
          this.rescheduleCheckTimeSlotsModelObj,
    );
  }
}
