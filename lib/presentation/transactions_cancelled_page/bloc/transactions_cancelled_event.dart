// ignore_for_file: must_be_immutable

part of 'transactions_cancelled_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsCancelled widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsCancelledEvent extends Equatable {}

/// Event that is dispatched when the TransactionsCancelled widget is first created.
class TransactionsCancelledInitialEvent extends TransactionsCancelledEvent {
  @override
  List<Object?> get props => [];
}
