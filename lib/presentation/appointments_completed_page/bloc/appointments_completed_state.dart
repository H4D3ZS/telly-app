// ignore_for_file: must_be_immutable

part of 'appointments_completed_bloc.dart';

/// Represents the state of AppointmentsCompleted in the application.
class AppointmentsCompletedState extends Equatable {
  AppointmentsCompletedState({this.appointmentsCompletedModelObj});

  AppointmentsCompletedModel? appointmentsCompletedModelObj;

  @override
  List<Object?> get props => [
        appointmentsCompletedModelObj,
      ];
  AppointmentsCompletedState copyWith(
      {AppointmentsCompletedModel? appointmentsCompletedModelObj}) {
    return AppointmentsCompletedState(
      appointmentsCompletedModelObj:
          appointmentsCompletedModelObj ?? this.appointmentsCompletedModelObj,
    );
  }
}
