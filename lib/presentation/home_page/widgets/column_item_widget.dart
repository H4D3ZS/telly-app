import '../models/column_item_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ColumnItemWidget extends StatelessWidget {
  ColumnItemWidget(
    this.columnItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ColumnItemModel columnItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 175.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomIconButton(
            height: 25.adaptSize,
            width: 25.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
            ),
          ),
          SizedBox(height: 29.v),
          Text(
            columnItemModelObj.textTwo!,
            style: CustomTextStyles.titleLargeWhiteA700,
          ),
          Text(
            columnItemModelObj.textCompletedAppointments!,
            style: CustomTextStyles.bodySmallSecondaryContainer,
          ),
        ],
      ),
    );
  }
}
