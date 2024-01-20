// ignore_for_file: must_be_immutable

part of 'payment_form_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentForm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentFormEvent extends Equatable {}

/// Event that is dispatched when the PaymentForm widget is first created.
class PaymentFormInitialEvent extends PaymentFormEvent {
  @override
  List<Object?> get props => [];
}
