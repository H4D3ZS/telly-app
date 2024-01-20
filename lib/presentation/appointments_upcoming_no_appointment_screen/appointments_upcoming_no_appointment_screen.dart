import 'bloc/appointments_upcoming_no_appointment_bloc.dart';
import 'models/appointments_upcoming_no_appointment_model.dart';
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

// ignore_for_file: must_be_immutable
class AppointmentsUpcomingNoAppointmentScreen extends StatelessWidget {
  AppointmentsUpcomingNoAppointmentScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentsUpcomingNoAppointmentBloc>(
        create: (context) => AppointmentsUpcomingNoAppointmentBloc(
            AppointmentsUpcomingNoAppointmentState(
                appointmentsUpcomingNoAppointmentModelObj:
                    AppointmentsUpcomingNoAppointmentModel()))
          ..add(AppointmentsUpcomingNoAppointmentInitialEvent()),
        child: AppointmentsUpcomingNoAppointmentScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("lbl_0_appointment".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 53.h, right: 43.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                        margin: EdgeInsets.only(left: 27.h),
                                        buttonTextStyle: CustomTextStyles
                                            .bodyMediumWhiteA700),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, top: 6.v, bottom: 3.v),
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
                                            child: Text("lbl_cancelled".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumGray500)))
                                  ]))),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("lbl_february_2023".tr,
                              style: CustomTextStyles.titleSmallPrimary)),
                      SizedBox(height: 15.v),
                      _buildCalendar(context),
                      SizedBox(height: 50.v),
                      _buildSeven(context),
                      SizedBox(height: 5.v)
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
    return Align(
        alignment: Alignment.center,
        child: BlocBuilder<AppointmentsUpcomingNoAppointmentBloc,
            AppointmentsUpcomingNoAppointmentState>(builder: (context, state) {
          return SizedBox(
              height: 72.v,
              width: 356.h,
              child: EasyDateTimeLine(
                  initialDate:
                      state.selectedDatesFromCalendar1 ?? DateTime.now(),
                  locale: 'en_US',
                  headerProps: EasyHeaderProps(
                      selectedDateFormat: SelectedDateFormat.fullDateDMY,
                      monthPickerType: MonthPickerType.switcher,
                      showHeader: false),
                  dayProps: EasyDayProps(width: 35.h, height: 35.v),
                  onDateChange: (selectedDate) {
                    state.selectedDatesFromCalendar1 = selectedDate;
                  },
                  itemBuilder: (context, dayNumber, dayName, monthName,
                      fullDate, isSelected) {
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
        }));
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 124.h, vertical: 104.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 11.v),
          CustomImageView(
              imagePath: ImageConstant.imgTellyLogo,
              height: 100.adaptSize,
              width: 100.adaptSize),
          SizedBox(height: 15.v),
          SizedBox(
              width: 182.h,
              child: Text("msg_you_have_no_appointment_on".tr,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargePoppinsWhiteA700))
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
}
