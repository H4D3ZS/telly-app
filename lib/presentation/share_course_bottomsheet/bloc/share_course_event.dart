// ignore_for_file: must_be_immutable

part of 'share_course_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShareCourse widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShareCourseEvent extends Equatable {}

/// Event that is dispatched when the ShareCourse widget is first created.
class ShareCourseInitialEvent extends ShareCourseEvent {
  @override
  List<Object?> get props => [];
}
