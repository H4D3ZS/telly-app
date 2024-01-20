import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/payment_form_screen/models/payment_form_model.dart';
part 'payment_form_event.dart';
part 'payment_form_state.dart';

/// A bloc that manages the state of a PaymentForm according to the event that is dispatched to it.
class PaymentFormBloc extends Bloc<PaymentFormEvent, PaymentFormState> {
  PaymentFormBloc(PaymentFormState initialState) : super(initialState) {
    on<PaymentFormInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentFormInitialEvent event,
    Emitter<PaymentFormState> emit,
  ) async {
    emit(state.copyWith(
      nameEditTextController: TextEditingController(),
      emailEditTextController: TextEditingController(),
      cardNumberEditTextController: TextEditingController(),
      expirationDateEditTextController: TextEditingController(),
      cvcEditTextController: TextEditingController(),
      countryEditTextController: TextEditingController(),
      zipcodeEditTextController: TextEditingController(),
    ));
  }
}
