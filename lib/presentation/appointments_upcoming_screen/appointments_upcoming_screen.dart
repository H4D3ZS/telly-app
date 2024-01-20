import 'bloc/appointments_upcoming_bloc.dart';
import 'models/appointments_upcoming_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/presentation/appointments_upcoming_one_page/appointments_upcoming_one_page.dart';
import 'package:telly/presentation/home_page/home_page.dart';
import 'package:telly/presentation/transactions_cancelled_tab_container_page/transactions_cancelled_tab_container_page.dart';
import 'package:telly/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:telly/widgets/app_bar/custom_app_bar.dart';
import 'package:telly/widgets/custom_bottom_bar.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/widgets/custom_icon_button.dart';
import 'package:telly/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class AppointmentsUpcomingScreen extends StatelessWidget {
  AppointmentsUpcomingScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentsUpcomingBloc>(
        create: (context) => AppointmentsUpcomingBloc(AppointmentsUpcomingState(
            appointmentsUpcomingModelObj: AppointmentsUpcomingModel()))
          ..add(AppointmentsUpcomingInitialEvent()),
        child: AppointmentsUpcomingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(children: [
                  SizedBox(height: 21.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 30.h),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_1_appointment".tr,
                                        style: theme.textTheme.titleMedium)),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 23.h, right: 13.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 6.v, bottom: 3.v),
                                              child: Text("lbl_today".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumGray500)),
                                          CustomElevatedButton(
                                              height: 30.v,
                                              width: 90.h,
                                              text: "lbl_upcoming".tr,
                                              margin:
                                                  EdgeInsets.only(left: 27.h),
                                              buttonTextStyle: CustomTextStyles
                                                  .bodyMediumWhiteA700),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.h,
                                                  top: 6.v,
                                                  bottom: 3.v),
                                              child: Text("lbl_completed".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumGray500)),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtCancelled(context);
                                              },
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 23.h,
                                                      top: 5.v,
                                                      bottom: 3.v),
                                                  child: Text(
                                                      "lbl_cancelled".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumGray500)))
                                        ])),
                                SizedBox(height: 31.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_february_2023".tr,
                                        style: CustomTextStyles
                                            .titleSmallPrimary)),
                                SizedBox(height: 15.v),
                                _buildCalendar(context),
                                SizedBox(height: 30.v),
                                _buildCardAppointment(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
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
  Widget _buildCalendar(BuildContext context) {
    return BlocBuilder<AppointmentsUpcomingBloc, AppointmentsUpcomingState>(
        builder: (context, state) {
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
              dayProps: EasyDayProps(width: 35.h, height: 35.v),
              onDateChange: (selectedDate) {
                state.selectedDatesFromCalendar1 = selectedDate;
              },
              itemBuilder: (context, dayNumber, dayName, monthName, fullDate,
                  isSelected) {
                return isSelected
                    ? Container(
                        width: 35.adaptSize,
                        padding: EdgeInsets.symmetric(
                            horizontal: 9.h, vertical: 4.v),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(17.h)),
                        child: Text(dayNumber.toString(),
                            style: CustomTextStyles.titleMediumWhiteA700_1
                                .copyWith(color: appTheme.whiteA700)))
                    : Container(
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(2.h)));
              }));
    });
  }

  /// Section Widget
  Widget _buildCardAppointment(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.outlineGrayA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse371,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            radius: BorderRadius.circular(25.h)),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 12.h, top: 3.v, bottom: 4.v),
                                child: Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("msg_guitar_lesson_for".tr,
                                                style: theme
                                                    .textTheme.titleMedium),
                                            Text("lbl_kim_chau2".tr,
                                                style:
                                                    theme.textTheme.bodyMedium)
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 15.h, bottom: 2.v),
                                      child: CustomIconButton(
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          padding: EdgeInsets.all(8.h),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMoreHorizontalPrimary)))
                                ])))
                      ])),
              SizedBox(height: 20.v),
              Divider(indent: 1.h),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 4.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgAppointmentIconPrimary,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 11.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_date".tr,
                                      style: theme.textTheme.bodyMedium),
                                  Text("lbl_feb_15_2024".tr,
                                      style:
                                          CustomTextStyles.bodyMediumPrimary_1)
                                ])),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgClock,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(top: 10.v, bottom: 12.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_time".tr,
                                      style: theme.textTheme.bodyMedium),
                                  Text("msg_9_32_am_10_32".tr,
                                      style:
                                          CustomTextStyles.bodyMediumPrimary_1)
                                ]))
                      ])),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 71.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgTag1,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 11.v, bottom: 10.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h, top: 3.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_category".tr,
                                  style: theme.textTheme.bodyMedium),
                              Text("lbl_music".tr,
                                  style: CustomTextStyles.bodyMediumPrimary_1)
                            ])),
                    Spacer(),
                    SizedBox(
                        width: 91.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgClock,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 10.v)),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_duration".tr,
                                        style: theme.textTheme.bodyMedium),
                                    Text("lbl_1_hour".tr,
                                        style: CustomTextStyles
                                            .bodyMediumPrimary_1)
                                  ])
                            ]))
                  ])),
              SizedBox(height: 16.v),
              Divider(indent: 1.h),
              SizedBox(height: 29.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomElevatedButton(
                                height: 31.v,
                                text: "lbl_message".tr,
                                margin: EdgeInsets.only(right: 8.h),
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumWhiteA70015)),
                        Expanded(
                            child: CustomOutlinedButton(
                                text: "lbl_reschedule".tr,
                                margin: EdgeInsets.only(left: 8.h),
                                onPressed: () {
                                  onTapReschedule(context);
                                }))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeiconprimary:
        return AppRoutes.homePage;
      case BottomBarEnum.Paymenticonsecondarycontainer:
        return AppRoutes.transactionsCancelledTabContainerPage;
      case BottomBarEnum.Appointmenticon:
        return AppRoutes.appointmentsUpcomingOnePage;
      case BottomBarEnum.Messageicon:
        return "/";
      case BottomBarEnum.Profileicon:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.transactionsCancelledTabContainerPage:
        return TransactionsCancelledTabContainerPage.builder(context);
      case AppRoutes.appointmentsUpcomingOnePage:
        return AppointmentsUpcomingOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the appointmentsCancelledTabContainerScreen when the action is triggered.
  onTapTxtCancelled(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.appointmentsCancelledTabContainerScreen,
    );
  }

  /// Navigates to the rescheduleSelectDayScreen when the action is triggered.
  onTapReschedule(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rescheduleSelectDayScreen,
    );
  }
}
