import 'bloc/appointments_incoming_bloc.dart';
import 'models/appointments_incoming_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_outlined_button.dart';

class AppointmentsIncomingPage extends StatefulWidget {
  const AppointmentsIncomingPage({Key? key}) : super(key: key);

  @override
  AppointmentsIncomingPageState createState() =>
      AppointmentsIncomingPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentsIncomingBloc>(
        create: (context) => AppointmentsIncomingBloc(AppointmentsIncomingState(
            appointmentsIncomingModelObj: AppointmentsIncomingModel()))
          ..add(AppointmentsIncomingInitialEvent()),
        child: AppointmentsIncomingPage());
  }
}

class AppointmentsIncomingPageState extends State<AppointmentsIncomingPage>
    with AutomaticKeepAliveClientMixin<AppointmentsIncomingPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentsIncomingBloc, AppointmentsIncomingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillWhiteA,
                  child: Column(children: [
                    SizedBox(height: 30.v),
                    _buildJoinCall(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildJoinCallButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 100.h,
        text: "lbl_join_call".tr,
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700);
  }

  /// Section Widget
  Widget _buildRescheduleButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 100.h,
        text: "lbl_reschedule".tr,
        buttonStyle: CustomButtonStyles.outlinePink,
        buttonTextStyle: CustomTextStyles.bodyMediumPink600,
        onPressed: () {
          onTapRescheduleButton(context);
        });
  }

  /// Section Widget
  Widget _buildJoinCallButton1(BuildContext context) {
    return Expanded(
        child: CustomOutlinedButton(
            text: "lbl_join_call".tr,
            margin: EdgeInsets.only(right: 11.h),
            buttonStyle: CustomButtonStyles.outlineGray,
            buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700));
  }

  /// Section Widget
  Widget _buildMessageButton(BuildContext context) {
    return Expanded(
        child: CustomOutlinedButton(
            text: "lbl_message".tr,
            margin: EdgeInsets.only(left: 11.h),
            buttonStyle: CustomButtonStyles.outlinePrimaryTL15,
            buttonTextStyle: CustomTextStyles.bodyMediumPrimary));
  }

  /// Section Widget
  Widget _buildRescheduleButton1(BuildContext context) {
    return CustomOutlinedButton(
        width: 100.h,
        text: "lbl_reschedule".tr,
        buttonStyle: CustomButtonStyles.outlinePink,
        buttonTextStyle: CustomTextStyles.bodyMediumPink600);
  }

  /// Section Widget
  Widget _buildJoinCall(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              decoration: AppDecoration.outlineGrayA
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
                    decoration: AppDecoration.outlineGray2007a.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL8),
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgClock3,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(top: 1.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h, top: 3.v),
                          child: Text("lbl_feb_13_2024".tr,
                              style: CustomTextStyles.bodyMediumWhiteA70015)),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h, top: 1.v),
                          child: Text("msg_9_00_am_9_45_am".tr,
                              style: CustomTextStyles.bodyMediumWhiteA70015))
                    ])),
                SizedBox(height: 16.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 15.h, right: 71.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse371,
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              radius: BorderRadius.circular(25.h)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 12.h, top: 4.v, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_guitar_lesson_for".tr,
                                        style: theme.textTheme.titleMedium),
                                    Text("lbl_kim_chau2".tr,
                                        style: theme.textTheme.bodyMedium)
                                  ]))
                        ]))),
                SizedBox(height: 20.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildJoinCallButton(context),
                          Container(
                              width: 100.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.h, vertical: 2.v),
                              decoration: AppDecoration.outlinePrimary1
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder15),
                              child: Text("lbl_message".tr,
                                  style: CustomTextStyles.bodyMediumPrimary)),
                          _buildRescheduleButton(context)
                        ])),
                SizedBox(height: 16.v)
              ])),
          SizedBox(height: 39.v),
          Text("msg_next_appointments".tr,
              style: CustomTextStyles.titleMediumSecondaryContainer),
          SizedBox(height: 15.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v),
              decoration: AppDecoration.outlineGrayA
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse372,
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              radius: BorderRadius.circular(25.h),
                              margin: EdgeInsets.symmetric(vertical: 4.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: 162.h,
                                        child: Text("msg_introduction_to".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                theme.textTheme.titleMedium)),
                                    Text("lbl_andy_chaplin".tr,
                                        style: theme.textTheme.bodyMedium)
                                  ]))
                        ])),
                    SizedBox(height: 11.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(left: 62.h, right: 36.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("lbl_feb_13_2024".tr,
                                          style: CustomTextStyles
                                              .bodyMediumPrimary15)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 21.h),
                                      child: Text("msg_3_00_pm_4_00_pm".tr,
                                          style: CustomTextStyles
                                              .bodyMediumPrimary15))
                                ]))),
                    SizedBox(height: 14.v),
                    Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: 222.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _buildJoinCallButton1(context),
                                        _buildMessageButton(context)
                                      ])),
                              _buildRescheduleButton1(context)
                            ])),
                    SizedBox(height: 3.v)
                  ]))
        ]));
  }

  /// Navigates to the rescheduleSelectDayScreen when the action is triggered.
  onTapRescheduleButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rescheduleSelectDayScreen,
    );
  }
}
