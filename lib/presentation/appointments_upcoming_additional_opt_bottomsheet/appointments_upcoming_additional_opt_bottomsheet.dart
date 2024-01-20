import 'bloc/appointments_upcoming_additional_opt_bloc.dart';
import 'models/appointments_upcoming_additional_opt_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AppointmentsUpcomingAdditionalOptBottomsheet extends StatelessWidget {
  const AppointmentsUpcomingAdditionalOptBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentsUpcomingAdditionalOptBloc>(
      create: (context) => AppointmentsUpcomingAdditionalOptBloc(
          AppointmentsUpcomingAdditionalOptState(
        appointmentsUpcomingAdditionalOptModelObj:
            AppointmentsUpcomingAdditionalOptModel(),
      ))
        ..add(AppointmentsUpcomingAdditionalOptInitialEvent()),
      child: AppointmentsUpcomingAdditionalOptBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 429.h,
      padding: EdgeInsets.symmetric(vertical: 30.v),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 70.h,
            child: Divider(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 29.h),
              child: Text(
                "lbl_share_options".tr,
                style: CustomTextStyles.titleMediumOpenSans,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          _buildShareOptionsRow(
            context,
            image: ImageConstant.imgCopy,
            shareVia: "lbl_copy_link".tr,
          ),
          _buildShareOptionsRow(
            context,
            image: ImageConstant.imgMoreHorizontal,
            shareVia: "lbl_share_via".tr,
          ),
          SizedBox(height: 30.v),
          BlocSelector<AppointmentsUpcomingAdditionalOptBloc,
              AppointmentsUpcomingAdditionalOptState, TextEditingController?>(
            selector: (state) => state.cancelAppointmentController,
            builder: (context, cancelAppointmentController) {
              return CustomTextFormField(
                controller: cancelAppointmentController,
                hintText: "msg_cancel_appointment".tr,
                hintStyle: CustomTextStyles.bodyLargePrimary,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(29.h, 10.v, 20.h, 10.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgXcircle,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 40.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 7.v,
                  right: 30.h,
                  bottom: 7.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                fillColor: appTheme.gray100,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildShareOptionsRow(
    BuildContext context, {
    required String image,
    required String shareVia,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 7.v,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: image,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              shareVia,
              style: CustomTextStyles.bodyLargePrimary.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
