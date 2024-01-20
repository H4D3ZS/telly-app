import '../models/appointmentcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/widgets/custom_icon_button.dart';
import 'package:telly/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class AppointmentcardItemWidget extends StatelessWidget {
  AppointmentcardItemWidget(
    this.appointmentcardItemModelObj, {
    Key? key,
    this.onTapBtnMoreHorizontal,
    this.onTapRescheduleButton,
  }) : super(
          key: key,
        );

  AppointmentcardItemModel appointmentcardItemModelObj;

  VoidCallback? onTapBtnMoreHorizontal;

  VoidCallback? onTapRescheduleButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGrayA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: appointmentcardItemModelObj?.lessonImage,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointmentcardItemModelObj.lessonTitle!,
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        appointmentcardItemModelObj.instructorName!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 7.v,
                  ),
                  child: CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    onTap: () {
                      onTapBtnMoreHorizontal!.call();
                    },
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMoreHorizontalPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 36.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 4.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAppointmentIconPrimary,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 11.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointmentcardItemModelObj.dateLabel!,
                        style: theme.textTheme.bodyMedium,
                      ),
                      Text(
                        appointmentcardItemModelObj.dateValue!,
                        style: CustomTextStyles.bodyMediumPrimary_1,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    top: 10.v,
                    bottom: 12.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointmentcardItemModelObj.timeLabel!,
                        style: theme.textTheme.bodyMedium,
                      ),
                      Text(
                        appointmentcardItemModelObj.timeValue!,
                        style: CustomTextStyles.bodyMediumPrimary_1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 71.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTag1,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    top: 11.v,
                    bottom: 10.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointmentcardItemModelObj.categoryLabel!,
                        style: theme.textTheme.bodyMedium,
                      ),
                      Text(
                        appointmentcardItemModelObj.categoryValue!,
                        style: CustomTextStyles.bodyMediumPrimary_1,
                      ),
                    ],
                  ),
                ),
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
                        margin: EdgeInsets.symmetric(vertical: 10.v),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            appointmentcardItemModelObj.durationLabel!,
                            style: theme.textTheme.bodyMedium,
                          ),
                          Text(
                            appointmentcardItemModelObj.durationValue!,
                            style: CustomTextStyles.bodyMediumPrimary_1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 46.v),
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
                    buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70015,
                  ),
                ),
                Expanded(
                  child: CustomOutlinedButton(
                    text: "lbl_reschedule".tr,
                    margin: EdgeInsets.only(left: 8.h),
                    onPressed: () {
                      onTapRescheduleButton!.call();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
