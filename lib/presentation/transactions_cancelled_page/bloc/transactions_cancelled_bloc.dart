import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/transactions_cancelled_page/models/transactions_cancelled_model.dart';
part 'transactions_cancelled_event.dart';
part 'transactions_cancelled_state.dart';

/// A bloc that manages the state of a TransactionsCancelled according to the event that is dispatched to it.
class TransactionsCancelledBloc
    extends Bloc<TransactionsCancelledEvent, TransactionsCancelledState> {
  TransactionsCancelledBloc(TransactionsCancelledState initialState)
      : super(initialState) {
    on<TransactionsCancelledInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionsCancelledInitialEvent event,
    Emitter<TransactionsCancelledState> emit,
  ) async {}
}
