import '../../../core/utils/image_constant.dart';
/// This class is used in the [viewhierarchylistsection_item_widget] screen.
class ViewhierarchylistsectionItemModel {
  ViewhierarchylistsectionItemModel({
    this.speakerphoneIcon,
    this.dateText,
    this.id,
  }) {
    speakerphoneIcon =
        speakerphoneIcon ?? ImageConstant.imgHeroiconsSolidSpeakerphone;
    dateText = dateText ?? "20 Mai";
    id = id ?? "";
  }

  String? speakerphoneIcon;

  String? dateText;

  String? id;
}
