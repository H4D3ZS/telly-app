import 'bloc/appointments_completed_bloc.dart';
import 'models/appointments_completed_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class AppointmentsCompletedPage extends StatefulWidget {
  const AppointmentsCompletedPage({Key? key})
      : super(
          key: key,
        );

  @override
  AppointmentsCompletedPageState createState() =>
      AppointmentsCompletedPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentsCompletedBloc>(
      create: (context) => AppointmentsCompletedBloc(AppointmentsCompletedState(
        appointmentsCompletedModelObj: AppointmentsCompletedModel(),
      ))
        ..add(AppointmentsCompletedInitialEvent()),
      child: AppointmentsCompletedPage(),
    );
  }
}

class AppointmentsCompletedPageState extends State<AppointmentsCompletedPage>
    with AutomaticKeepAliveClientMixin<AppointmentsCompletedPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentsCompletedBloc, AppointmentsCompletedState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Column(
                      children: [
                        _buildCardAppointment(context),
                        SizedBox(height: 20.v),
                        _buildCardAppointment1(context),
                      ],
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
  Widget _buildBookAgain(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 31.v,
        text: "lbl_book_again".tr,
        margin: EdgeInsets.only(right: 8.h),
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70015,
      ),
    );
  }

  /// Section Widget
  Widget _buildShare(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_share".tr,
        margin: EdgeInsets.only(left: 8.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardAppointment(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGrayA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 54.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse371,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 4.v,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_guitar_lesson_for".tr,
                        style: CustomTextStyles.titleMediumSecondaryContainer,
                      ),
                      Text(
                        "lbl_kim_chau2".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 15.v),
          SizedBox(
            height: 39.v,
            width: 335.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "msg_9_32_am_10_32".tr,
                      style: CustomTextStyles.bodyMediumPrimary_1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 92.h),
                  child: _buildTime(
                    context,
                    dateText: "lbl_date".tr,
                    dateValue: "lbl_feb_09_2024".tr,
                    timeText: "lbl_time".tr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 70.h),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTag1,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(
                            top: 8.v,
                            bottom: 9.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_category".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              Text(
                                "lbl_music".tr,
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
                            top: 7.v,
                            bottom: 10.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: _buildDuration(
                    context,
                    durationText: "lbl_duration".tr,
                    timeText: "lbl_1_hour".tr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Divider(),
          SizedBox(height: 29.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildBookAgain(context),
              _buildShare(context),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookAgain1(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 31.v,
        text: "lbl_book_again".tr,
        margin: EdgeInsets.only(right: 8.h),
        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70015,
      ),
    );
  }

  /// Section Widget
  Widget _buildShare1(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_share".tr,
        margin: EdgeInsets.only(left: 8.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardAppointment1(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGrayA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse373,
                height: 50.adaptSize,
                width: 50.adaptSize,
                radius: BorderRadius.circular(
                  25.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 4.v,
                  bottom: 5.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "lbl_cooking_basics".tr,
                      style: CustomTextStyles.titleMediumSecondaryContainer,
                    ),
                    Text(
                      "lbl_sandra_summers".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 15.v),
          SizedBox(
            height: 39.v,
            width: 331.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "msg_6_40_am_7_20_am".tr,
                      style: CustomTextStyles.bodyMediumPrimary_1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 88.h),
                  child: _buildTime(
                    context,
                    dateText: "lbl_date".tr,
                    dateValue: "lbl_feb_04_2024".tr,
                    timeText: "lbl_time".tr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 70.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTag1,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 11.v),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 3.v,
                  ),
                  child: IntrinsicWidth(
                    child: SizedBox(
                      height: 36.v,
                      width: 66.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "lbl_category".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          _buildNinetyFive(
                            context,
                            cooking: "lbl_cooking".tr,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                    child: SizedBox(
                      height: 37.v,
                      width: 91.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 31.h),
                            child: _buildDuration(
                              context,
                              durationText: "lbl_duration".tr,
                              timeText: "lbl_40_mins".tr,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 193.h,
                                  margin: EdgeInsets.only(right: 145.h),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgTag1,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(bottom: 12.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15.h,
                                          top: 10.v,
                                        ),
                                        child: Text(
                                          "lbl_cooking".tr,
                                          style: CustomTextStyles
                                              .bodyMediumPrimary_1,
                                        ),
                                      ),
                                      Spacer(),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgClock,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(bottom: 12.v),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                Divider(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Divider(),
          SizedBox(height: 29.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildBookAgain1(context),
              _buildShare1(context),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String dateText,
    required String dateValue,
    required String timeText,
  }) {
    return Row(
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
                dateText,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.secondaryContainer,
                ),
              ),
              Text(
                dateValue,
                style: CustomTextStyles.bodyMediumPrimary_1.copyWith(
                  color: theme.colorScheme.primary,
                ),
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
          padding: EdgeInsets.only(
            left: 15.h,
            bottom: 21.v,
          ),
          child: Text(
            timeText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.secondaryContainer,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDuration(
    BuildContext context, {
    required String durationText,
    required String timeText,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            durationText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.secondaryContainer,
            ),
          ),
        ),
        Text(
          timeText,
          style: CustomTextStyles.bodyMediumPrimary_1.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildNinetyFive(
    BuildContext context, {
    required String cooking,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 193.h,
          margin: EdgeInsets.only(right: 145.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTag1,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(bottom: 12.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 10.v,
                ),
                child: Text(
                  cooking,
                  style: CustomTextStyles.bodyMediumPrimary_1.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(bottom: 12.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.v),
        Divider(),
      ],
    );
  }
}
