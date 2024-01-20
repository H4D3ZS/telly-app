import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/transactions_incoming_page/models/transactions_incoming_model.dart';
part 'transactions_incoming_event.dart';
part 'transactions_incoming_state.dart';

/// A bloc that manages the state of a TransactionsIncoming according to the event that is dispatched to it.
class TransactionsIncomingBloc
    extends Bloc<TransactionsIncomingEvent, TransactionsIncomingState> {
  TransactionsIncomingBloc(TransactionsIncomingState initialState)
      : super(initialState) {
    on<TransactionsIncomingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionsIncomingInitialEvent event,
    Emitter<TransactionsIncomingState> emit,
  ) async {}
}
