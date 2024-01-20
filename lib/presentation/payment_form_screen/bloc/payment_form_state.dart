// ignore_for_file: must_be_immutable

part of 'payment_form_bloc.dart';

/// Represents the state of PaymentForm in the application.
class PaymentFormState extends Equatable {
  PaymentFormState({
    this.nameEditTextController,
    this.emailEditTextController,
    this.cardNumberEditTextController,
    this.expirationDateEditTextController,
    this.cvcEditTextController,
    this.countryEditTextController,
    this.zipcodeEditTextController,
    this.paymentFormModelObj,
  });

  TextEditingController? nameEditTextController;

  TextEditingController? emailEditTextController;

  TextEditingController? cardNumberEditTextController;

  TextEditingController? expirationDateEditTextController;

  TextEditingController? cvcEditTextController;

  TextEditingController? countryEditTextController;

  TextEditingController? zipcodeEditTextController;

  PaymentFormModel? paymentFormModelObj;

  @override
  List<Object?> get props => [
        nameEditTextController,
        emailEditTextController,
        cardNumberEditTextController,
        expirationDateEditTextController,
        cvcEditTextController,
        countryEditTextController,
        zipcodeEditTextController,
        paymentFormModelObj,
      ];
  PaymentFormState copyWith({
    TextEditingController? nameEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? cardNumberEditTextController,
    TextEditingController? expirationDateEditTextController,
    TextEditingController? cvcEditTextController,
    TextEditingController? countryEditTextController,
    TextEditingController? zipcodeEditTextController,
    PaymentFormModel? paymentFormModelObj,
  }) {
    return PaymentFormState(
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      cardNumberEditTextController:
          cardNumberEditTextController ?? this.cardNumberEditTextController,
      expirationDateEditTextController: expirationDateEditTextController ??
          this.expirationDateEditTextController,
      cvcEditTextController:
          cvcEditTextController ?? this.cvcEditTextController,
      countryEditTextController:
          countryEditTextController ?? this.countryEditTextController,
      zipcodeEditTextController:
          zipcodeEditTextController ?? this.zipcodeEditTextController,
      paymentFormModelObj: paymentFormModelObj ?? this.paymentFormModelObj,
    );
  }
}
