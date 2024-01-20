import 'bloc/reschedule_select_time_range_bloc.dart';
import 'models/reschedule_select_time_range_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/widgets/custom_icon_button.dart';

class RescheduleSelectTimeRangeBottomsheet extends StatelessWidget {
  const RescheduleSelectTimeRangeBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RescheduleSelectTimeRangeBloc>(
        create: (context) => RescheduleSelectTimeRangeBloc(
            RescheduleSelectTimeRangeState(
                rescheduleSelectTimeRangeModelObj:
                    RescheduleSelectTimeRangeModel()))
          ..add(RescheduleSelectTimeRangeInitialEvent()),
        child: RescheduleSelectTimeRangeBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 30.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 6.v),
                            child: Text("msg_choose_time_duration".tr,
                                style: CustomTextStyles.titleMedium18)),
                        CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            onTap: () {
                              onTapBtnX(context);
                            },
                            child:
                                CustomImageView(imagePath: ImageConstant.imgX1))
                      ])),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 8.h),
                            child: _buildEndTime(context,
                                endText: "lbl_starts".tr,
                                timeText: "lbl_09_42_am".tr)),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_duration".tr,
                                          style: CustomTextStyles
                                              .titleSmallOpenSansGray50001),
                                      SizedBox(height: 3.v),
                                      Container(
                                          width: 112.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.h, vertical: 8.v),
                                          decoration: AppDecoration.fillGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgClock2,
                                                    height: 20.v,
                                                    width: 19.h,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 1.v)),
                                                Text("lbl_1_hour".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumOpenSansSecondaryContainer)
                                              ]))
                                    ]))),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: _buildEndTime(context,
                                endText: "lbl_end".tr,
                                timeText: "lbl_10_42_am".tr))
                      ])),
              SizedBox(height: 29.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text("lbl_event_details".tr,
                      style: CustomTextStyles.titleMedium18)),
              SizedBox(height: 18.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text("msg_guitar_lessons_for2".tr,
                      style: CustomTextStyles.bodyLargeSecondaryContainer)),
              SizedBox(height: 2.v),
              Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text("msg_kim_chau_music".tr,
                      style: CustomTextStyles.bodyLargeSecondaryContainer)),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text("lbl_8_sessions".tr,
                      style: CustomTextStyles.bodyLargeSecondaryContainer)),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                  text: "msg_confirm_time_schedule".tr,
                  margin: EdgeInsets.only(left: 2.h),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  onPressed: () {
                    onTapConfirmTimeSchedule(context);
                  })
            ]));
  }

  /// Common widget
  Widget _buildEndTime(
    BuildContext context, {
    required String endText,
    required String timeText,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(endText,
                  style: CustomTextStyles.titleSmallOpenSansGray50001
                      .copyWith(color: appTheme.gray50001)),
              SizedBox(height: 3.v),
              Container(
                  width: 112.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v),
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Text(timeText,
                      style: CustomTextStyles.titleMediumOpenSans_1
                          .copyWith(color: theme.colorScheme.primary)))
            ])));
  }

  /// Navigates to the rescheduleCheckTimeSlotsScreen when the action is triggered.
  onTapBtnX(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rescheduleCheckTimeSlotsScreen,
    );
  }

  /// Navigates to the rescheduleAppointmentConfirmedScreen when the action is triggered.
  onTapConfirmTimeSchedule(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rescheduleAppointmentConfirmedScreen,
    );
  }
}
