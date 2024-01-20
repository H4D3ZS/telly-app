// ignore_for_file: must_be_immutable

part of 'transactions_cancelled_tab_container_bloc.dart';

/// Represents the state of TransactionsCancelledTabContainer in the application.
class TransactionsCancelledTabContainerState extends Equatable {
  TransactionsCancelledTabContainerState(
      {this.transactionsCancelledTabContainerModelObj});

  TransactionsCancelledTabContainerModel?
      transactionsCancelledTabContainerModelObj;

  @override
  List<Object?> get props => [
        transactionsCancelledTabContainerModelObj,
      ];
  TransactionsCancelledTabContainerState copyWith(
      {TransactionsCancelledTabContainerModel?
          transactionsCancelledTabContainerModelObj}) {
    return TransactionsCancelledTabContainerState(
      transactionsCancelledTabContainerModelObj:
          transactionsCancelledTabContainerModelObj ??
              this.transactionsCancelledTabContainerModelObj,
    );
  }
}
