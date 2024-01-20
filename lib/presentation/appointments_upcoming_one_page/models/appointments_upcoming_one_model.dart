// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'appointmentcard_item_model.dart';

/// This class defines the variables used in the [appointments_upcoming_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AppointmentsUpcomingOneModel extends Equatable {
  AppointmentsUpcomingOneModel({this.appointmentcardItemList = const []}) {}

  List<AppointmentcardItemModel> appointmentcardItemList;

  AppointmentsUpcomingOneModel copyWith(
      {List<AppointmentcardItemModel>? appointmentcardItemList}) {
    return AppointmentsUpcomingOneModel(
      appointmentcardItemList:
          appointmentcardItemList ?? this.appointmentcardItemList,
    );
  }

  @override
  List<Object?> get props => [appointmentcardItemList];
}
