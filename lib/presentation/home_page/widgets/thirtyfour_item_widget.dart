import '../models/thirtyfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';

// ignore: must_be_immutable
class ThirtyfourItemWidget extends StatelessWidget {
  ThirtyfourItemWidget(
    this.thirtyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtyfourItemModel thirtyfourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.h,
      child: CustomImageView(
        imagePath: thirtyfourItemModelObj?.ellipse,
        height: 40.adaptSize,
        width: 40.adaptSize,
        radius: BorderRadius.circular(
          20.h,
        ),
      ),
    );
  }
}
