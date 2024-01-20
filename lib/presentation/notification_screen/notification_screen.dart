import 'bloc/notification_bloc.dart';
import 'models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_icon_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
      create: (context) => NotificationBloc(NotificationState(
        notificationModelObj: NotificationModel(),
      ))
        ..add(NotificationInitialEvent()),
      child: NotificationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildFortyFive(context),
                  _buildNotificationOne(context),
                  _buildNotificationTwo(context),
                  _buildDescription(context),
                  _buildNotificationThree(context),
                  SizedBox(height: 5.v),
                  _buildNotificationFour(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(30.h),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 169.h,
            margin: EdgeInsets.only(top: 50.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.v),
                  child: Text(
                    "lbl_notifications".tr,
                    style: CustomTextStyles.titleMediumWhiteA700_1,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse37,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(top: 50.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationOne(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse53,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
                margin: EdgeInsets.only(
                  top: 3.v,
                  bottom: 8.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 214.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_kim_chau".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            TextSpan(
                              text: "msg_accepted_your_book".tr,
                              style: CustomTextStyles.bodyMediumff000000,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Text(
                      "lbl_5_mins_ago".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMoreVertical1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 15.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationTwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        top: 5.v,
        bottom: 4.v,
      ),
      decoration: AppDecoration.outlineGray20001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse53,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
                margin: EdgeInsets.only(
                  top: 3.v,
                  bottom: 8.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 241.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_kim_chau".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            TextSpan(
                              text: "msg_uploaded_a_new_service_titled".tr,
                              style: CustomTextStyles.bodyMediumff000000,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Text(
                      "lbl_7_mins_ago".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMoreVertical1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 15.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(30.h, 5.v, 30.h, 4.v),
      decoration: AppDecoration.outlineGray20001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse5340x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 8.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 280.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_ashley_hofstader2".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "msg_uploaded_a_new_service".tr,
                                  style: CustomTextStyles.bodyMediumff000000,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMoreVertical1,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 11.h,
                          top: 13.v,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "lbl_7_mins_ago".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationThree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(30.h, 5.v, 30.h, 4.v),
      decoration: AppDecoration.outlineGray20001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse531,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 8.v,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 273.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_jordan_brooks".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "msg_uploaded_a_new_service_titled2".tr,
                        style: CustomTextStyles.bodyMediumff000000,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                "lbl_20_mins_ago".tr,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMoreVertical1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 15.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationFour(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(30.h, 5.v, 30.h, 4.v),
      decoration: AppDecoration.outlineGray20001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse532,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 8.v,
            ),
          ),
          Container(
            height: 52.v,
            width: 235.h,
            margin: EdgeInsets.only(left: 15.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 235.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_sarah_karpovich".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "msg_uploaded_a_new_service2".tr,
                            style: CustomTextStyles.bodyMediumff000000,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "lbl_7_mins_ago".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgMoreVertical1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 15.v,
            ),
          ),
        ],
      ),
    );
  }
}
