import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/column_item_model.dart';
import '../models/thirtyfour_item_model.dart';
import 'package:telly/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            columnItemList: fillColumnItemList(),
            thirtyfourItemList: fillThirtyfourItemList())));
  }

  List<ColumnItemModel> fillColumnItemList() {
    return [
      ColumnItemModel(
          textTwo: "02", textCompletedAppointments: "Completed Appoinments"),
      ColumnItemModel(
          textTwo: "04", textCompletedAppointments: "Upcoming Appointments")
    ];
  }

  List<ThirtyfourItemModel> fillThirtyfourItemList() {
    return [
      ThirtyfourItemModel(ellipse: ImageConstant.imgEllipse53),
      ThirtyfourItemModel(ellipse: ImageConstant.imgEllipse54)
    ];
  }
}
