import 'bloc/appointment_detail_initial_load_bloc.dart';
import 'models/appointment_detail_initial_load_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_icon_button.dart';
import 'package:telly/widgets/custom_outlined_button.dart';

class AppointmentDetailInitialLoadScreen extends StatelessWidget {
  const AppointmentDetailInitialLoadScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentDetailInitialLoadBloc>(
      create: (context) =>
          AppointmentDetailInitialLoadBloc(AppointmentDetailInitialLoadState(
        appointmentDetailInitialLoadModelObj:
            AppointmentDetailInitialLoadModel(),
      ))
            ..add(AppointmentDetailInitialLoadInitialEvent()),
      child: AppointmentDetailInitialLoadScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentDetailInitialLoadBloc,
        AppointmentDetailInitialLoadState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildArrowDownSection(context),
                  SizedBox(height: 30.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle58,
                    height: 120.v,
                    width: 370.h,
                  ),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "msg_guitar_lessons_for".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildSessionProgressSection(context),
                  SizedBox(height: 11.v),
                  SizedBox(
                    height: 7.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 8,
                      effect: ScrollingDotsEffect(
                        spacing: 7,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        dotHeight: 7.v,
                        dotWidth: 40.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 29.v),
                  _buildJoinCallSection(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildArrowDownSection(BuildContext context) {
    return SizedBox(
      height: 450.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.all(30.h),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBR100,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                    ),
                  ),
                  SizedBox(height: 94.v),
                  Container(
                    width: 195.h,
                    margin: EdgeInsets.only(left: 32.h),
                    child: Text(
                      "msg_feb_10_2024_10_32".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 94.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse53100x100,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(
              50.h,
            ),
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 50.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 170.h,
              bottom: 20.v,
            ),
            child: CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(18.h),
              decoration: IconButtonStyleHelper.outlineWhiteA,
              alignment: Alignment.bottomRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgMessage,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 95.h,
              bottom: 20.v,
            ),
            child: CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(18.h),
              decoration: IconButtonStyleHelper.outlineWhiteA,
              alignment: Alignment.bottomRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgShare22,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSessionProgressSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "msg_session_progress".tr,
              style: CustomTextStyles.bodySmallPrimary,
            ),
          ),
          Text(
            "lbl_1_out_of_8".tr,
            style: CustomTextStyles.bodySmallSecondaryContainer12,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJoinCallSection(BuildContext context) {
    return SizedBox(
      height: 214.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                right: 32.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_course_description".tr,
                    style: CustomTextStyles.titleMediumSecondaryContainer,
                  ),
                  SizedBox(height: 6.v),
                  SizedBox(
                    width: 367.h,
                    child: Text(
                      "msg_lorem_ipsum_dolor".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "msg_lorem_ipsum_dolor2".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 134.v),
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 25.v,
              ),
              decoration: AppDecoration.outlineGrayD.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 242.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomOutlinedButton(
                            text: "lbl_join_call".tr,
                            margin: EdgeInsets.only(right: 12.h),
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            buttonTextStyle:
                                CustomTextStyles.bodyMediumWhiteA700,
                          ),
                        ),
                        Expanded(
                          child: CustomOutlinedButton(
                            text: "lbl_cancel".tr,
                            margin: EdgeInsets.only(left: 12.h),
                            buttonStyle: CustomButtonStyles.outlinePrimaryTL15,
                            buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 109.h,
                    text: "lbl_reschedule".tr,
                    buttonStyle: CustomButtonStyles.outlinePink,
                    buttonTextStyle: CustomTextStyles.bodyMediumPink600,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
