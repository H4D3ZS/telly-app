import '../../../core/app_export.dart';

/// This class is used in the [column_item_widget] screen.
class ColumnItemModel {
  ColumnItemModel({
    this.textTwo,
    this.textCompletedAppointments,
    this.id,
  }) {
    textTwo = textTwo ?? "02";
    textCompletedAppointments =
        textCompletedAppointments ?? "Completed Appoinments";
    id = id ?? "";
  }

  String? textTwo;

  String? textCompletedAppointments;

  String? id;
}
