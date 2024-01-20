import 'bloc/appointment_detail_bloc.dart';
import 'models/appointment_detail_model.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:telly/widgets/app_bar/custom_app_bar.dart';
import 'package:telly/presentation/cancel_appointment_bottomsheet/cancel_appointment_bottomsheet.dart';

class AppointmentDetailScreen extends StatelessWidget {
  const AppointmentDetailScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentDetailBloc>(
        create: (context) => AppointmentDetailBloc(AppointmentDetailState(
            appointmentDetailModelObj: AppointmentDetailModel()))
          ..add(AppointmentDetailInitialEvent()),
        child: AppointmentDetailScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentDetailBloc, AppointmentDetailState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildArrowDownStack(context),
                    SizedBox(height: 30.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle58,
                                          height: 120.v,
                                          width: 370.h,
                                          alignment: Alignment.center),
                                      SizedBox(height: 14.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 30.h),
                                          child: Text(
                                              "msg_guitar_lessons_for".tr,
                                              style:
                                                  theme.textTheme.titleLarge)),
                                      SizedBox(height: 7.v),
                                      _buildSessionProgressRow(context),
                                      SizedBox(height: 11.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 7.v,
                                              child: AnimatedSmoothIndicator(
                                                  activeIndex: 0,
                                                  count: 8,
                                                  effect: ScrollingDotsEffect(
                                                      spacing: 7,
                                                      activeDotColor: theme
                                                          .colorScheme.primary,
                                                      dotColor: theme
                                                          .colorScheme
                                                          .onPrimaryContainer
                                                          .withOpacity(1),
                                                      dotHeight: 7.v,
                                                      dotWidth: 40.h)))),
                                      SizedBox(height: 29.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 30.h),
                                          child: Text(
                                              "msg_course_description".tr,
                                              style: CustomTextStyles
                                                  .titleMediumSecondaryContainer)),
                                      SizedBox(height: 6.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              width: 367.h,
                                              margin: EdgeInsets.only(
                                                  left: 30.h, right: 32.h),
                                              child: Text(
                                                  "msg_lorem_ipsum_dolor".tr,
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyLarge))),
                                      SizedBox(height: 12.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              width: 367.h,
                                              margin: EdgeInsets.only(
                                                  left: 30.h, right: 32.h),
                                              child: Text(
                                                  "msg_lorem_ipsum_dolor".tr,
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyLarge))),
                                      SizedBox(height: 26.v),
                                      _buildWhatToExpectStack(context),
                                      SizedBox(height: 26.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 30.h),
                                          child: Text("lbl_things_to_bring".tr,
                                              style: CustomTextStyles
                                                  .titleMediumSecondaryContainer)),
                                      SizedBox(height: 8.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 30.h),
                                          child: Row(children: [
                                            Container(
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                margin: EdgeInsets.only(
                                                    top: 6.v, bottom: 5.v),
                                                decoration: BoxDecoration(
                                                    color: theme.colorScheme
                                                        .onPrimaryContainer
                                                        .withOpacity(1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.h))),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10.h),
                                                child: Text("lbl_guitar".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge))
                                          ])),
                                      SizedBox(height: 6.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 30.h),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 10.adaptSize,
                                                    width: 10.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        top: 5.v, bottom: 6.v),
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .onPrimaryContainer
                                                            .withOpacity(1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5.h))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10.h),
                                                    child: Text(
                                                        "lbl_guitar_pick".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge))
                                              ])),
                                      SizedBox(height: 3.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 30.h),
                                          child: Row(children: [
                                            Container(
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                margin: EdgeInsets.only(
                                                    top: 6.v, bottom: 5.v),
                                                decoration: BoxDecoration(
                                                    color: theme.colorScheme
                                                        .onPrimaryContainer
                                                        .withOpacity(1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.h))),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10.h),
                                                child: Text("lbl_patience".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge))
                                          ]))
                                    ]))))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildArrowDownStack(BuildContext context) {
    return SizedBox(
        height: 330.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 30.v),
                  decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBR100),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(
                            height: 40.v,
                            leadingWidth: double.maxFinite,
                            leading: AppbarLeadingIconbutton(
                                imagePath: ImageConstant.imgArrowDownPrimary,
                                margin:
                                    EdgeInsets.only(left: 30.h, right: 360.h))),
                        SizedBox(height: 34.v),
                        Container(
                            width: 195.h,
                            margin: EdgeInsets.only(left: 57.h),
                            child: Text("msg_feb_10_2024_10_32".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.headlineLarge)),
                        SizedBox(height: 54.v)
                      ]))),
          Padding(
              padding: EdgeInsets.only(left: 50.h),
              child: AnotherStepper(
                  stepperDirection: Axis.horizontal,
                  activeIndex: 0,
                  inverted: true,
                  stepperList: [StepperData(), StepperData()]))
        ]));
  }

  /// Section Widget
  Widget _buildSessionProgressRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text("msg_session_progress".tr,
                          style: CustomTextStyles.bodySmallPrimary)),
                  Text("lbl_1_out_of_8".tr,
                      style: CustomTextStyles.bodySmallSecondaryContainer12)
                ])));
  }

  /// Section Widget
  Widget _buildWhatToExpectStack(BuildContext context) {
    return SizedBox(
        height: 327.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 30.h, right: 32.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_what_to_expect".tr,
                            style:
                                CustomTextStyles.titleMediumSecondaryContainer),
                        SizedBox(height: 5.v),
                        SizedBox(
                            width: 367.h,
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge)),
                        SizedBox(height: 12.v),
                        SizedBox(
                            width: 367.h,
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge)),
                        SizedBox(height: 12.v),
                        SizedBox(
                            width: 367.h,
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge))
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 3.v, bottom: 244.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.v),
                  decoration: AppDecoration.outlineGrayD.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL24),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 109.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 26.h, vertical: 4.v),
                            decoration: AppDecoration.outlinePrimary.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder15),
                            child: Text("lbl_join_call".tr,
                                style: CustomTextStyles.bodyMediumWhiteA700)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtSend(context);
                            },
                            child: Container(
                                width: 109.h,
                                margin: EdgeInsets.only(left: 24.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.h, vertical: 4.v),
                                decoration: AppDecoration.outlinePrimary1
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder15),
                                child: Text("lbl_cancel".tr,
                                    style:
                                        CustomTextStyles.bodyMediumPrimary))),
                        Container(
                            width: 109.h,
                            margin: EdgeInsets.only(left: 18.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 4.v),
                            decoration: AppDecoration.outlinePink.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder15),
                            child: Text("lbl_reschedule".tr,
                                style: CustomTextStyles.bodyMediumPink600))
                      ])))
        ]));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [CancelAppointmentBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapTxtSend(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => CancelAppointmentBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
