// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [appointment_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AppointmentDetailModel extends Equatable {
  AppointmentDetailModel() {}

  AppointmentDetailModel copyWith() {
    return AppointmentDetailModel();
  }

  @override
  List<Object?> get props => [];
}
