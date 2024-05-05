import '../../../core/utils/image_constant.dart';
/// This class is used in the [paymentmethod_item_widget] screen.
class PaymentmethodItemModel {
  PaymentmethodItemModel({
    this.settings,
    this.id,
  }) {
    settings = settings ?? ImageConstant.imgSettingsIndigo900;
    id = id ?? "";
  }

  String? settings;

  String? id;
}
