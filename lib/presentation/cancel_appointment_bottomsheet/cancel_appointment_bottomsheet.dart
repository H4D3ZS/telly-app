import 'bloc/cancel_appointment_bloc.dart';
import 'models/cancel_appointment_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/widgets/custom_icon_button.dart';
import 'package:telly/widgets/custom_text_form_field.dart';

class CancelAppointmentBottomsheet extends StatelessWidget {
  const CancelAppointmentBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CancelAppointmentBloc>(
        create: (context) => CancelAppointmentBloc(CancelAppointmentState(
            cancelAppointmentModelObj: CancelAppointmentModel()))
          ..add(CancelAppointmentInitialEvent()),
        child: CancelAppointmentBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(30.h),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                    padding: EdgeInsets.only(top: 8.v, bottom: 4.v),
                    child: Text("msg_cancel_appointment".tr,
                        style: CustomTextStyles.titleMedium18)),
                CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    onTap: () {
                      onTapBtnX(context);
                    },
                    child: CustomImageView(imagePath: ImageConstant.imgX1))
              ]),
              SizedBox(height: 16.v),
              Text("msg_please_enter_your".tr,
                  style: CustomTextStyles.titleSmallOpenSansGray50001),
              SizedBox(height: 12.v),
              BlocSelector<CancelAppointmentBloc, CancelAppointmentState,
                      TextEditingController?>(
                  selector: (state) => state.enterReasonController,
                  builder: (context, enterReasonController) {
                    return CustomTextFormField(
                        controller: enterReasonController,
                        hintText: "msg_enter_your_reason".tr,
                        textInputAction: TextInputAction.done,
                        maxLines: 4,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 17.v),
                        borderDecoration: TextFormFieldStyleHelper.fillGrayTL4,
                        fillColor: appTheme.gray10001);
                  }),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                  text: "lbl_confirm".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  onPressed: () {
                    onTapConfirm(context);
                  })
            ]));
  }

  /// Navigates to the appointmentDetailScreen when the action is triggered.
  onTapBtnX(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.appointmentDetailScreen,
    );
  }

  /// Navigates to the appointmentDetailScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.appointmentDetailScreen,
    );
  }
}
