// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'column_item_model.dart';
import 'thirtyfour_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.columnItemList = const [],
    this.thirtyfourItemList = const [],
  }) {}

  List<ColumnItemModel> columnItemList;

  List<ThirtyfourItemModel> thirtyfourItemList;

  HomeModel copyWith({
    List<ColumnItemModel>? columnItemList,
    List<ThirtyfourItemModel>? thirtyfourItemList,
  }) {
    return HomeModel(
      columnItemList: columnItemList ?? this.columnItemList,
      thirtyfourItemList: thirtyfourItemList ?? this.thirtyfourItemList,
    );
  }

  @override
  List<Object?> get props => [columnItemList, thirtyfourItemList];
}
