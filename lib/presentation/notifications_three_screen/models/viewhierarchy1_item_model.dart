import '../../../core/utils/image_constant.dart';
/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {
  Viewhierarchy1ItemModel({
    this.heroIcon,
    this.dateText,
    this.id,
  }) {
    heroIcon = heroIcon ?? ImageConstant.imgHeroiconsSolidSpeakerphone;
    dateText = dateText ?? "20 Mai";
    id = id ?? "";
  }

  String? heroIcon;

  String? dateText;

  String? id;
}
