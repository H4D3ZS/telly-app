// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [transactions_paid_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionsPaidModel extends Equatable {
  TransactionsPaidModel() {}

  TransactionsPaidModel copyWith() {
    return TransactionsPaidModel();
  }

  @override
  List<Object?> get props => [];
}
