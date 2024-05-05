
import '../../../core/utils/image_constant.dart';

/// This class is used in the [sms2_item_widget] screen.
class Sms2ItemModel {
  Sms2ItemModel({
    this.smsImage,
    this.smsText,
    this.smsPhoneNumber,
    this.id,
  }) {
    smsImage = smsImage ?? ImageConstant.imgIcons4;
    smsText = smsText ?? "SMS";
    smsPhoneNumber = smsPhoneNumber ?? "+221 77 123 45 67";
    id = id ?? "";
  }

  String? smsImage;

  String? smsText;

  String? smsPhoneNumber;

  String? id;
}
