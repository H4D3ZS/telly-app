// ignore_for_file: must_be_immutable

part of 'share_course_bloc.dart';

/// Represents the state of ShareCourse in the application.
class ShareCourseState extends Equatable {
  ShareCourseState({this.shareCourseModelObj});

  ShareCourseModel? shareCourseModelObj;

  @override
  List<Object?> get props => [
        shareCourseModelObj,
      ];
  ShareCourseState copyWith({ShareCourseModel? shareCourseModelObj}) {
    return ShareCourseState(
      shareCourseModelObj: shareCourseModelObj ?? this.shareCourseModelObj,
    );
  }
}
