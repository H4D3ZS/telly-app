import '../../../core/app_export.dart';

/// This class is used in the [thirtyfour_item_widget] screen.
class ThirtyfourItemModel {
  ThirtyfourItemModel({
    this.ellipse,
    this.id,
  }) {
    ellipse = ellipse ?? ImageConstant.imgEllipse53;
    id = id ?? "";
  }

  String? ellipse;

  String? id;
}
