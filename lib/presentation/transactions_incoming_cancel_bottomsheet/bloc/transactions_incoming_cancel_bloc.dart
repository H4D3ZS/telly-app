import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/transactions_incoming_cancel_bottomsheet/models/transactions_incoming_cancel_model.dart';
part 'transactions_incoming_cancel_event.dart';
part 'transactions_incoming_cancel_state.dart';

/// A bloc that manages the state of a TransactionsIncomingCancel according to the event that is dispatched to it.
class TransactionsIncomingCancelBloc extends Bloc<
    TransactionsIncomingCancelEvent, TransactionsIncomingCancelState> {
  TransactionsIncomingCancelBloc(TransactionsIncomingCancelState initialState)
      : super(initialState) {
    on<TransactionsIncomingCancelInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionsIncomingCancelInitialEvent event,
    Emitter<TransactionsIncomingCancelState> emit,
  ) async {
    emit(state.copyWith(
      enterReasonController: TextEditingController(),
    ));
  }
}
