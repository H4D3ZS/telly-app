// ignore_for_file: must_be_immutable

part of 'cancel_appointment_bloc.dart';

/// Represents the state of CancelAppointment in the application.
class CancelAppointmentState extends Equatable {
  CancelAppointmentState({
    this.enterReasonController,
    this.cancelAppointmentModelObj,
  });

  TextEditingController? enterReasonController;

  CancelAppointmentModel? cancelAppointmentModelObj;

  @override
  List<Object?> get props => [
        enterReasonController,
        cancelAppointmentModelObj,
      ];
  CancelAppointmentState copyWith({
    TextEditingController? enterReasonController,
    CancelAppointmentModel? cancelAppointmentModelObj,
  }) {
    return CancelAppointmentState(
      enterReasonController:
          enterReasonController ?? this.enterReasonController,
      cancelAppointmentModelObj:
          cancelAppointmentModelObj ?? this.cancelAppointmentModelObj,
    );
  }
}
