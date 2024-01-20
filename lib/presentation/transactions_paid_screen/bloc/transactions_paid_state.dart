// ignore_for_file: must_be_immutable

part of 'transactions_paid_bloc.dart';

/// Represents the state of TransactionsPaid in the application.
class TransactionsPaidState extends Equatable {
  TransactionsPaidState({this.transactionsPaidModelObj});

  TransactionsPaidModel? transactionsPaidModelObj;

  @override
  List<Object?> get props => [
        transactionsPaidModelObj,
      ];
  TransactionsPaidState copyWith(
      {TransactionsPaidModel? transactionsPaidModelObj}) {
    return TransactionsPaidState(
      transactionsPaidModelObj:
          transactionsPaidModelObj ?? this.transactionsPaidModelObj,
    );
  }
}
