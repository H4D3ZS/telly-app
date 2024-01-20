// ignore_for_file: must_be_immutable

part of 'transactions_incoming_cancel_bloc.dart';

/// Represents the state of TransactionsIncomingCancel in the application.
class TransactionsIncomingCancelState extends Equatable {
  TransactionsIncomingCancelState({
    this.enterReasonController,
    this.transactionsIncomingCancelModelObj,
  });

  TextEditingController? enterReasonController;

  TransactionsIncomingCancelModel? transactionsIncomingCancelModelObj;

  @override
  List<Object?> get props => [
        enterReasonController,
        transactionsIncomingCancelModelObj,
      ];
  TransactionsIncomingCancelState copyWith({
    TextEditingController? enterReasonController,
    TransactionsIncomingCancelModel? transactionsIncomingCancelModelObj,
  }) {
    return TransactionsIncomingCancelState(
      enterReasonController:
          enterReasonController ?? this.enterReasonController,
      transactionsIncomingCancelModelObj: transactionsIncomingCancelModelObj ??
          this.transactionsIncomingCancelModelObj,
    );
  }
}
