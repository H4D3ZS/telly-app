// ignore_for_file: must_be_immutable

part of 'transactions_incoming_cancel_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsIncomingCancel widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsIncomingCancelEvent extends Equatable {}

/// Event that is dispatched when the TransactionsIncomingCancel widget is first created.
class TransactionsIncomingCancelInitialEvent
    extends TransactionsIncomingCancelEvent {
  @override
  List<Object?> get props => [];
}
