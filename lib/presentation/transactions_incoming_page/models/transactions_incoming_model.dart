// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [transactions_incoming_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionsIncomingModel extends Equatable {
  TransactionsIncomingModel() {}

  TransactionsIncomingModel copyWith() {
    return TransactionsIncomingModel();
  }

  @override
  List<Object?> get props => [];
}
