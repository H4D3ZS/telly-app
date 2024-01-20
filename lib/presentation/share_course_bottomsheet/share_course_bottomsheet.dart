import 'bloc/share_course_bloc.dart';
import 'models/share_course_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';

class ShareCourseBottomsheet extends StatelessWidget {
  const ShareCourseBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ShareCourseBloc>(
        create: (context) => ShareCourseBloc(
            ShareCourseState(shareCourseModelObj: ShareCourseModel()))
          ..add(ShareCourseInitialEvent()),
        child: ShareCourseBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapShareModal(context);
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 27.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: 70.h,
                          child: Divider(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1)))),
                  SizedBox(height: 16.v),
                  Text("lbl_share_options".tr,
                      style: CustomTextStyles.titleMediumOpenSans),
                  SizedBox(height: 22.v),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCopy,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(bottom: 4.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text("lbl_copy_link".tr,
                            style: CustomTextStyles.bodyLargePrimary))
                  ]),
                  SizedBox(height: 22.v),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMoreHorizontal,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 2.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text("lbl_share_via".tr,
                            style: CustomTextStyles.bodyLargePrimary))
                  ])
                ])));
  }

  /// Navigates to the appointmentDetailScreen when the action is triggered.
  onTapShareModal(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.appointmentDetailScreen,
    );
  }
}
