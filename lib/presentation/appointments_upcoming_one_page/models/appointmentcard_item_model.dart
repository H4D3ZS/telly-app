import '../../../core/app_export.dart';

/// This class is used in the [appointmentcard_item_widget] screen.
class AppointmentcardItemModel {
  AppointmentcardItemModel({
    this.lessonImage,
    this.lessonTitle,
    this.instructorName,
    this.dateLabel,
    this.dateValue,
    this.timeLabel,
    this.timeValue,
    this.categoryLabel,
    this.categoryValue,
    this.durationLabel,
    this.durationValue,
    this.id,
  }) {
    lessonImage = lessonImage ?? ImageConstant.imgEllipse371;
    lessonTitle = lessonTitle ?? "Guitar Lesson for Beginners";
    instructorName = instructorName ?? "Kim Chau";
    dateLabel = dateLabel ?? "Date";
    dateValue = dateValue ?? "Feb. 14, 2024";
    timeLabel = timeLabel ?? "Time";
    timeValue = timeValue ?? "9:32 AM - 10:32 AM";
    categoryLabel = categoryLabel ?? "Category";
    categoryValue = categoryValue ?? "Music";
    durationLabel = durationLabel ?? "Duration";
    durationValue = durationValue ?? "1 hour";
    id = id ?? "";
  }

  String? lessonImage;

  String? lessonTitle;

  String? instructorName;

  String? dateLabel;

  String? dateValue;

  String? timeLabel;

  String? timeValue;

  String? categoryLabel;

  String? categoryValue;

  String? durationLabel;

  String? durationValue;

  String? id;
}
