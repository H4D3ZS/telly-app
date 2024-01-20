// ignore_for_file: must_be_immutable

part of 'transactions_incoming_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsIncoming widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsIncomingEvent extends Equatable {}

/// Event that is dispatched when the TransactionsIncoming widget is first created.
class TransactionsIncomingInitialEvent extends TransactionsIncomingEvent {
  @override
  List<Object?> get props => [];
}
