import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/transactions_paid_screen/models/transactions_paid_model.dart';
part 'transactions_paid_event.dart';
part 'transactions_paid_state.dart';

/// A bloc that manages the state of a TransactionsPaid according to the event that is dispatched to it.
class TransactionsPaidBloc
    extends Bloc<TransactionsPaidEvent, TransactionsPaidState> {
  TransactionsPaidBloc(TransactionsPaidState initialState)
      : super(initialState) {
    on<TransactionsPaidInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionsPaidInitialEvent event,
    Emitter<TransactionsPaidState> emit,
  ) async {}
}
