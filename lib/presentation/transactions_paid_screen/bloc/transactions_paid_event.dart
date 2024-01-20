// ignore_for_file: must_be_immutable

part of 'transactions_paid_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsPaid widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsPaidEvent extends Equatable {}

/// Event that is dispatched when the TransactionsPaid widget is first created.
class TransactionsPaidInitialEvent extends TransactionsPaidEvent {
  @override
  List<Object?> get props => [];
}
