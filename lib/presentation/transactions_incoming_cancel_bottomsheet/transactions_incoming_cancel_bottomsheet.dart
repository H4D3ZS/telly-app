import 'bloc/transactions_incoming_cancel_bloc.dart';
import 'models/transactions_incoming_cancel_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/widgets/custom_icon_button.dart';
import 'package:telly/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TransactionsIncomingCancelBottomsheet extends StatelessWidget {
  const TransactionsIncomingCancelBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionsIncomingCancelBloc>(
      create: (context) =>
          TransactionsIncomingCancelBloc(TransactionsIncomingCancelState(
        transactionsIncomingCancelModelObj: TransactionsIncomingCancelModel(),
      ))
            ..add(TransactionsIncomingCancelInitialEvent()),
      child: TransactionsIncomingCancelBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(30.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 4.v,
                ),
                child: Text(
                  "msg_cancel_appointment".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(10.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgX1,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Text(
            "msg_please_enter_your".tr,
            style: CustomTextStyles.titleSmallOpenSansGray50001,
          ),
          SizedBox(height: 12.v),
          BlocSelector<TransactionsIncomingCancelBloc,
              TransactionsIncomingCancelState, TextEditingController?>(
            selector: (state) => state.enterReasonController,
            builder: (context, enterReasonController) {
              return CustomTextFormField(
                controller: enterReasonController,
                hintText: "msg_enter_your_reason".tr,
                textInputAction: TextInputAction.done,
                maxLines: 4,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 17.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGrayTL4,
                fillColor: appTheme.gray10001,
              );
            },
          ),
          SizedBox(height: 30.v),
          CustomElevatedButton(
            text: "lbl_confirm".tr,
            buttonStyle: CustomButtonStyles.fillPrimary,
          ),
        ],
      ),
    );
  }
}
