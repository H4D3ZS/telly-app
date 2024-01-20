import 'bloc/payment_form_bloc.dart';
import 'models/payment_form_model.dart';
import 'package:flutter/material.dart';
import 'package:telly/core/app_export.dart';
import 'package:telly/core/utils/validation_functions.dart';
import 'package:telly/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:telly/widgets/app_bar/custom_app_bar.dart';
import 'package:telly/widgets/custom_elevated_button.dart';
import 'package:telly/widgets/custom_text_form_field.dart';

class PaymentFormScreen extends StatelessWidget {
  PaymentFormScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentFormBloc>(
      create: (context) => PaymentFormBloc(PaymentFormState(
        paymentFormModelObj: PaymentFormModel(),
      ))
        ..add(PaymentFormInitialEvent()),
      child: PaymentFormScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 32.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse3780x80,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      radius: BorderRadius.circular(
                        40.h,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "lbl_kim_chau2".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "lbl_289_99".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 28.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_payer_information".tr,
                        style: CustomTextStyles.titleMediumSecondaryContainer,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    _buildNameEditText(context),
                    SizedBox(height: 15.v),
                    _buildEmailEditText(context),
                    SizedBox(height: 29.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_payment_information".tr,
                        style: CustomTextStyles.titleMediumSecondaryContainer,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildCardNumberEditText(context),
                    SizedBox(height: 15.v),
                    _buildExpirationDate(context),
                    SizedBox(height: 29.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_country_or_region".tr,
                        style: CustomTextStyles.titleMediumSecondaryContainer,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildCountryEditText(context),
                    SizedBox(height: 15.v),
                    _buildZipcodeEditText(context),
                    SizedBox(height: 40.v),
                    _buildPayButton(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.fromLTRB(30.h, 8.v, 360.h, 8.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return BlocSelector<PaymentFormBloc, PaymentFormState,
        TextEditingController?>(
      selector: (state) => state.nameEditTextController,
      builder: (context, nameEditTextController) {
        return CustomTextFormField(
          controller: nameEditTextController,
          hintText: "lbl_enter_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return BlocSelector<PaymentFormBloc, PaymentFormState,
        TextEditingController?>(
      selector: (state) => state.emailEditTextController,
      builder: (context, emailEditTextController) {
        return CustomTextFormField(
          controller: emailEditTextController,
          hintText: "lbl_enter_email".tr,
          hintStyle: CustomTextStyles.titleMediumOpenSansGray500,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCardNumberEditText(BuildContext context) {
    return BlocSelector<PaymentFormBloc, PaymentFormState,
        TextEditingController?>(
      selector: (state) => state.cardNumberEditTextController,
      builder: (context, cardNumberEditTextController) {
        return CustomTextFormField(
          controller: cardNumberEditTextController,
          hintText: "lbl_card_number".tr,
          hintStyle: CustomTextStyles.titleMediumOpenSansGray500,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildExpirationDateEditText(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: BlocSelector<PaymentFormBloc, PaymentFormState,
            TextEditingController?>(
          selector: (state) => state.expirationDateEditTextController,
          builder: (context, expirationDateEditTextController) {
            return CustomTextFormField(
              controller: expirationDateEditTextController,
              hintText: "lbl_mm_yy".tr,
              hintStyle: CustomTextStyles.titleMediumOpenSansGray500,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCvcEditText(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: BlocSelector<PaymentFormBloc, PaymentFormState,
            TextEditingController?>(
          selector: (state) => state.cvcEditTextController,
          builder: (context, cvcEditTextController) {
            return CustomTextFormField(
              controller: cvcEditTextController,
              hintText: "lbl_cvc".tr,
              hintStyle: CustomTextStyles.titleMediumOpenSansGray500,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExpirationDate(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildExpirationDateEditText(context),
        _buildCvcEditText(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildCountryEditText(BuildContext context) {
    return BlocSelector<PaymentFormBloc, PaymentFormState,
        TextEditingController?>(
      selector: (state) => state.countryEditTextController,
      builder: (context, countryEditTextController) {
        return CustomTextFormField(
          controller: countryEditTextController,
          hintText: "lbl_united_states".tr,
          hintStyle: CustomTextStyles.titleMediumOpenSansGray500,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildZipcodeEditText(BuildContext context) {
    return BlocSelector<PaymentFormBloc, PaymentFormState,
        TextEditingController?>(
      selector: (state) => state.zipcodeEditTextController,
      builder: (context, zipcodeEditTextController) {
        return CustomTextFormField(
          controller: zipcodeEditTextController,
          hintText: "lbl_zip_code".tr,
          hintStyle: CustomTextStyles.titleMediumOpenSansGray500,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPayButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_pay".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }
}
