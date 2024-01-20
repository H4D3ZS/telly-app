import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../models/appointmentcard_item_model.dart';
import 'package:telly/presentation/appointments_upcoming_one_page/models/appointments_upcoming_one_model.dart';
part 'appointments_upcoming_one_event.dart';
part 'appointments_upcoming_one_state.dart';

/// A bloc that manages the state of a AppointmentsUpcomingOne according to the event that is dispatched to it.
class AppointmentsUpcomingOneBloc
    extends Bloc<AppointmentsUpcomingOneEvent, AppointmentsUpcomingOneState> {
  AppointmentsUpcomingOneBloc(AppointmentsUpcomingOneState initialState)
      : super(initialState) {
    on<AppointmentsUpcomingOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentsUpcomingOneInitialEvent event,
    Emitter<AppointmentsUpcomingOneState> emit,
  ) async {
    emit(state.copyWith(
        appointmentsUpcomingOneModelObj: state.appointmentsUpcomingOneModelObj
            ?.copyWith(
                appointmentcardItemList: fillAppointmentcardItemList())));
  }

  List<AppointmentcardItemModel> fillAppointmentcardItemList() {
    return [
      AppointmentcardItemModel(
          lessonImage: ImageConstant.imgEllipse371,
          lessonTitle: "Guitar Lesson for Beginners",
          instructorName: "Kim Chau",
          dateLabel: "Date",
          dateValue: "Feb. 14, 2024",
          timeLabel: "Time",
          timeValue: "9:32 AM - 10:32 AM",
          categoryLabel: "Category",
          categoryValue: "Music",
          durationLabel: "Duration",
          durationValue: "1 hour"),
      AppointmentcardItemModel(
          dateLabel: "Date",
          dateValue: "Feb. 14, 2024",
          timeLabel: "Time",
          timeValue: "11:00 AM - 11:40 AM",
          categoryLabel: "Category"),
      AppointmentcardItemModel(
          dateLabel: "Date",
          dateValue: "Feb. 14, 2024",
          timeLabel: "Time",
          timeValue: "11:40 AM - 12:10 PM",
          categoryLabel: "Category")
    ];
  }
}
