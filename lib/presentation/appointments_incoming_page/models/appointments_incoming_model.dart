// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [appointments_incoming_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AppointmentsIncomingModel extends Equatable {
  AppointmentsIncomingModel() {}

  AppointmentsIncomingModel copyWith() {
    return AppointmentsIncomingModel();
  }

  @override
  List<Object?> get props => [];
}
