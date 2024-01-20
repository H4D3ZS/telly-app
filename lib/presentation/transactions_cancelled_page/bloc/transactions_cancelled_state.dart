// ignore_for_file: must_be_immutable

part of 'transactions_cancelled_bloc.dart';

/// Represents the state of TransactionsCancelled in the application.
class TransactionsCancelledState extends Equatable {
  TransactionsCancelledState({this.transactionsCancelledModelObj});

  TransactionsCancelledModel? transactionsCancelledModelObj;

  @override
  List<Object?> get props => [
        transactionsCancelledModelObj,
      ];
  TransactionsCancelledState copyWith(
      {TransactionsCancelledModel? transactionsCancelledModelObj}) {
    return TransactionsCancelledState(
      transactionsCancelledModelObj:
          transactionsCancelledModelObj ?? this.transactionsCancelledModelObj,
    );
  }
}
