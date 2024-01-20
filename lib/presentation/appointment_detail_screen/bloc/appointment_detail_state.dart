// ignore_for_file: must_be_immutable

part of 'appointment_detail_bloc.dart';

/// Represents the state of AppointmentDetail in the application.
class AppointmentDetailState extends Equatable {
  AppointmentDetailState({this.appointmentDetailModelObj});

  AppointmentDetailModel? appointmentDetailModelObj;

  @override
  List<Object?> get props => [
        appointmentDetailModelObj,
      ];
  AppointmentDetailState copyWith(
      {AppointmentDetailModel? appointmentDetailModelObj}) {
    return AppointmentDetailState(
      appointmentDetailModelObj:
          appointmentDetailModelObj ?? this.appointmentDetailModelObj,
    );
  }
}
