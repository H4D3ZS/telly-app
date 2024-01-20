// ignore_for_file: must_be_immutable

part of 'transactions_incoming_bloc.dart';

/// Represents the state of TransactionsIncoming in the application.
class TransactionsIncomingState extends Equatable {
  TransactionsIncomingState({this.transactionsIncomingModelObj});

  TransactionsIncomingModel? transactionsIncomingModelObj;

  @override
  List<Object?> get props => [
        transactionsIncomingModelObj,
      ];
  TransactionsIncomingState copyWith(
      {TransactionsIncomingModel? transactionsIncomingModelObj}) {
    return TransactionsIncomingState(
      transactionsIncomingModelObj:
          transactionsIncomingModelObj ?? this.transactionsIncomingModelObj,
    );
  }
}
