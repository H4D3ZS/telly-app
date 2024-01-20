import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "notification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "appointment-detail".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.appointmentDetailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "payment-form".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentFormScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "appointments - cancelled - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .appointmentsCancelledTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "transactions-paid".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.transactionsPaidScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "reschedule-appointment - confirmed".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .rescheduleAppointmentConfirmedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "home - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "appointments - upcoming".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.appointmentsUpcomingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "reschedule - check time slots".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.rescheduleCheckTimeSlotsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "reschedule - select day".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.rescheduleSelectDayScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "appointments - upcoming - no-appointment".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .appointmentsUpcomingNoAppointmentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "appointment-detail initial-load".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.appointmentDetailInitialLoadScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
