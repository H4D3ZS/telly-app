import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/transactions_cancelled_tab_container_page/models/transactions_cancelled_tab_container_model.dart';
part 'transactions_cancelled_tab_container_event.dart';
part 'transactions_cancelled_tab_container_state.dart';

/// A bloc that manages the state of a TransactionsCancelledTabContainer according to the event that is dispatched to it.
class TransactionsCancelledTabContainerBloc extends Bloc<
    TransactionsCancelledTabContainerEvent,
    TransactionsCancelledTabContainerState> {
  TransactionsCancelledTabContainerBloc(
      TransactionsCancelledTabContainerState initialState)
      : super(initialState) {
    on<TransactionsCancelledTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionsCancelledTabContainerInitialEvent event,
    Emitter<TransactionsCancelledTabContainerState> emit,
  ) async {}
}
