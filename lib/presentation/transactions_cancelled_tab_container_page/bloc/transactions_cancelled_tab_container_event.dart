// ignore_for_file: must_be_immutable

part of 'transactions_cancelled_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsCancelledTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsCancelledTabContainerEvent extends Equatable {}

/// Event that is dispatched when the TransactionsCancelledTabContainer widget is first created.
class TransactionsCancelledTabContainerInitialEvent
    extends TransactionsCancelledTabContainerEvent {
  @override
  List<Object?> get props => [];
}
