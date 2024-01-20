import '../appointments_upcoming_one_page/widgets/appointmentcard_item_widget.dart';
import 'bloc/appointments_upcoming_one_bloc.dart';
import 'models/appointmentcard_item_model.dart';
import 'models/appointments_upcoming_one_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:telly/widgets/app_bar/custom_app_bar.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/presentation/appointments_upcoming_additional_opt_bottomsheet/appointments_upcoming_additional_opt_bottomsheet.dart';

class AppointmentsUpcomingOnePage extends StatelessWidget {
  const AppointmentsUpcomingOnePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentsUpcomingOneBloc>(
        create: (context) => AppointmentsUpcomingOneBloc(
            AppointmentsUpcomingOneState(
                appointmentsUpcomingOneModelObj:
                    AppointmentsUpcomingOneModel()))
          ..add(AppointmentsUpcomingOneInitialEvent()),
        child: AppointmentsUpcomingOnePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(children: [
                  SizedBox(height: 21.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_3_appointments".tr,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 15.v),
                  Padding(
                      padding: EdgeInsets.only(left: 23.h, right: 13.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 3.v),
                                child: Text("lbl_today".tr,
                                    style: CustomTextStyles.bodyMediumGray500)),
                            _buildUpcomingTab(context),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 10.h, top: 6.v, bottom: 3.v),
                                child: Text("lbl_completed".tr,
                                    style: CustomTextStyles.bodyMediumGray500)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtCancelled(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 23.h, top: 5.v, bottom: 3.v),
                                    child: Text("lbl_cancelled".tr,
                                        style: CustomTextStyles
                                            .bodyMediumGray500)))
                          ])),
                  SizedBox(height: 31.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_february_2023".tr,
                          style: CustomTextStyles.titleSmallPrimary)),
                  SizedBox(height: 15.v),
                  _buildCalendar(context),
                  SizedBox(height: 30.v),
                  _buildAppointmentCard(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(30.h, 8.v, 360.h, 8.v)));
  }

  /// Section Widget
  Widget _buildUpcomingTab(BuildContext context) {
    return CustomElevatedButton(
        height: 30.v,
        width: 90.h,
        text: "lbl_upcoming".tr,
        margin: EdgeInsets.only(left: 27.h),
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return BlocBuilder<AppointmentsUpcomingOneBloc,
        AppointmentsUpcomingOneState>(builder: (context, state) {
      return SizedBox(
          height: 72.v,
          width: 356.h,
          child: EasyDateTimeLine(
              initialDate: state.selectedDatesFromCalendar1 ?? DateTime.now(),
              locale: 'en_US',
              headerProps: EasyHeaderProps(
                  selectedDateFormat: SelectedDateFormat.fullDateDMY,
                  monthPickerType: MonthPickerType.switcher,
                  showHeader: false),
              dayProps: EasyDayProps(width: 5.h, height: 5.v),
              onDateChange: (selectedDate) {
                state.selectedDatesFromCalendar1 = selectedDate;
              },
              itemBuilder: (context, dayNumber, dayName, monthName, fullDate,
                  isSelected) {
                return isSelected
                    ? Container(
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(2.h)))
                    : Container(
                        width: 35.adaptSize,
                        padding: EdgeInsets.symmetric(
                            horizontal: 9.h, vertical: 4.v),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(17.h)),
                        child: Text(dayNumber.toString(),
                            style: CustomTextStyles.titleMediumWhiteA700_1
                                .copyWith(color: appTheme.whiteA700)));
              }));
    });
  }

  /// Section Widget
  Widget _buildAppointmentCard(BuildContext context) {
    return Expanded(
        child: BlocSelector<AppointmentsUpcomingOneBloc,
                AppointmentsUpcomingOneState, AppointmentsUpcomingOneModel?>(
            selector: (state) => state.appointmentsUpcomingOneModelObj,
            builder: (context, appointmentsUpcomingOneModelObj) {
              return ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.5.v),
                        child: SizedBox(
                            width: 338.h,
                            child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.gray100)));
                  },
                  itemCount: appointmentsUpcomingOneModelObj
                          ?.appointmentcardItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    AppointmentcardItemModel model =
                        appointmentsUpcomingOneModelObj
                                ?.appointmentcardItemList[index] ??
                            AppointmentcardItemModel();
                    return AppointmentcardItemWidget(model,
                        onTapBtnMoreHorizontal: () {
                      onTapBtnMoreHorizontal(context);
                    }, onTapRescheduleButton: () {
                      onTapRescheduleButton(context);
                    });
                  });
            }));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [AppointmentsUpcomingAdditionalOptBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapBtnMoreHorizontal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) =>
            AppointmentsUpcomingAdditionalOptBottomsheet.builder(context),
        isScrollControlled: true);
  }

  /// Navigates to the rescheduleSelectDayScreen when the action is triggered.
  onTapRescheduleButton(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.rescheduleSelectDayScreen);
  }

  /// Navigates to the appointmentsCancelledTabContainerScreen when the action is triggered.
  onTapTxtCancelled(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.appointmentsCancelledTabContainerScreen,
    );
  }
}
