import 'bloc/reschedule_check_time_slots_bloc.dart';
import 'models/reschedule_check_time_slots_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:telly/widgets/app_bar/custom_app_bar.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/widgets/custom_text_form_field.dart';

class RescheduleCheckTimeSlotsScreen extends StatelessWidget {
  const RescheduleCheckTimeSlotsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RescheduleCheckTimeSlotsBloc>(
        create: (context) => RescheduleCheckTimeSlotsBloc(
            RescheduleCheckTimeSlotsState(
                rescheduleCheckTimeSlotsModelObj:
                    RescheduleCheckTimeSlotsModel()))
          ..add(RescheduleCheckTimeSlotsInitialEvent()),
        child: RescheduleCheckTimeSlotsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 11.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Column(children: [
                          Text("lbl_august_2_2024".tr,
                              style: CustomTextStyles
                                  .bodySmallSecondaryContainer12),
                          Text("lbl_wednesday".tr,
                              style: CustomTextStyles.titleMedium18),
                          SizedBox(height: 14.v),
                          Text("lbl_timezone".tr,
                              style: CustomTextStyles
                                  .titleSmallOpenSansPrimaryContainer),
                          SizedBox(height: 9.v),
                          _buildSelectTimeButton(context),
                          SizedBox(height: 29.v),
                          Text("lbl_select_a_time".tr,
                              style: CustomTextStyles.titleLargeOpenSans),
                          SizedBox(height: 4.v),
                          Text("msg_duration_1_hour".tr,
                              style:
                                  CustomTextStyles.titleSmallOpenSansGray50001),
                          SizedBox(height: 29.v),
                          _buildTakenSlot(context),
                          _buildAvailableSlot(context),
                          SizedBox(height: 74.v),
                          _buildTakenSlot1(context),
                          SizedBox(height: 46.v),
                          _buildTimeRow(context),
                          SizedBox(height: 34.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_13_00".tr,
                                  style: CustomTextStyles
                                      .titleSmallOpenSansGray500)),
                          SizedBox(height: 57.v),
                          _buildTime(context),
                          SizedBox(height: 58.v),
                          _buildTakenSlot2(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(30.h, 8.v, 360.h, 8.v),
            onTap: () {
              onTapArrowDown(context);
            }));
  }

  /// Section Widget
  Widget _buildSelectTimeButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_est_1_33_am".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 15.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGlobe1,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineOnPrimaryContainer,
        buttonTextStyle: CustomTextStyles.titleMediumOpenSans_1);
  }

  /// Section Widget
  Widget _buildTakenSlotEditText(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 36.h),
            child: BlocSelector<RescheduleCheckTimeSlotsBloc,
                    RescheduleCheckTimeSlotsState, TextEditingController?>(
                selector: (state) => state.takenSlotEditTextController,
                builder: (context, takenSlotEditTextController) {
                  return CustomTextFormField(
                      controller: takenSlotEditTextController,
                      borderDecoration: TextFormFieldStyleHelper.fillGrayTL41,
                      fillColor: appTheme.gray20001);
                })));
  }

  /// Section Widget
  Widget _buildTakenSlot(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 47.v),
              child: Text("lbl_09_00".tr,
                  style: CustomTextStyles.titleSmallOpenSansGray500)),
          _buildTakenSlotEditText(context)
        ]);
  }

  /// Section Widget
  Widget _buildAvailableSlotEditText(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 36.h),
            child: BlocSelector<RescheduleCheckTimeSlotsBloc,
                    RescheduleCheckTimeSlotsState, TextEditingController?>(
                selector: (state) => state.availableSlotEditTextController,
                builder: (context, availableSlotEditTextController) {
                  return CustomTextFormField(
                      controller: availableSlotEditTextController,
                      borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
                })));
  }

  /// Section Widget
  Widget _buildAvailableSlot(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(top: 31.v, bottom: 2.v),
          child: Text("lbl_10_00".tr,
              style: CustomTextStyles.titleSmallOpenSansGray500)),
      _buildAvailableSlotEditText(context)
    ]);
  }

  /// Section Widget
  Widget _buildTakenSlotEditText1(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 36.h),
            child: BlocSelector<RescheduleCheckTimeSlotsBloc,
                    RescheduleCheckTimeSlotsState, TextEditingController?>(
                selector: (state) => state.takenSlotEditTextController1,
                builder: (context, takenSlotEditTextController1) {
                  return CustomTextFormField(
                      controller: takenSlotEditTextController1,
                      borderDecoration: TextFormFieldStyleHelper.fillGrayTL41,
                      fillColor: appTheme.gray20001);
                })));
  }

  /// Section Widget
  Widget _buildTakenSlot1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 5.v),
              child: Text("lbl_11_00".tr,
                  style: CustomTextStyles.titleSmallOpenSansGray500)),
          _buildTakenSlotEditText1(context)
        ]);
  }

  /// Section Widget
  Widget _buildTimeRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 27.v, bottom: 44.v),
              child: Text("lbl_12_00".tr,
                  style: CustomTextStyles.titleSmallOpenSansGray500)),
          Container(
              height: 92.v,
              width: 298.h,
              margin: EdgeInsets.only(left: 36.h),
              decoration: BoxDecoration(
                  color: appTheme.gray20001,
                  borderRadius: BorderRadius.circular(4.h)))
        ]);
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 21.v),
              child: Column(children: [
                Text("lbl_14_00".tr,
                    style: CustomTextStyles.titleSmallOpenSansGray500),
                SizedBox(height: 79.v),
                Text("lbl_15_00".tr,
                    style: CustomTextStyles.titleSmallOpenSansGray500)
              ])),
          Container(
              height: 135.v,
              width: 298.h,
              margin: EdgeInsets.only(left: 36.h, bottom: 5.v),
              decoration: BoxDecoration(
                  color: appTheme.gray20001,
                  borderRadius: BorderRadius.circular(4.h)))
        ]);
  }

  /// Section Widget
  Widget _buildTakenSlotEditText2(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 36.h),
            child: BlocSelector<RescheduleCheckTimeSlotsBloc,
                    RescheduleCheckTimeSlotsState, TextEditingController?>(
                selector: (state) => state.takenSlotEditTextController2,
                builder: (context, takenSlotEditTextController2) {
                  return CustomTextFormField(
                      controller: takenSlotEditTextController2,
                      textInputAction: TextInputAction.done,
                      borderDecoration: TextFormFieldStyleHelper.fillGrayTL41,
                      fillColor: appTheme.gray20001);
                })));
  }

  /// Section Widget
  Widget _buildTakenSlot2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(top: 20.v),
          child: Text("lbl_16_00".tr,
              style: CustomTextStyles.titleSmallOpenSansGray500)),
      _buildTakenSlotEditText2(context)
    ]);
  }

  /// Navigates to the rescheduleSelectDayScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rescheduleSelectDayScreen,
    );
  }
}
