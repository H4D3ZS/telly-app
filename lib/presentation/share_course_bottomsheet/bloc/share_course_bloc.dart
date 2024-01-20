import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:telly/presentation/share_course_bottomsheet/models/share_course_model.dart';
part 'share_course_event.dart';
part 'share_course_state.dart';

/// A bloc that manages the state of a ShareCourse according to the event that is dispatched to it.
class ShareCourseBloc extends Bloc<ShareCourseEvent, ShareCourseState> {
  ShareCourseBloc(ShareCourseState initialState) : super(initialState) {
    on<ShareCourseInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShareCourseInitialEvent event,
    Emitter<ShareCourseState> emit,
  ) async {}
}
