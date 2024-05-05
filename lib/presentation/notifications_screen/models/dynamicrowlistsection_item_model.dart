
import '../../../core/utils/image_constant.dart';

/// This class is used in the [dynamicrowlistsection_item_widget] screen.
class DynamicrowlistsectionItemModel {
  DynamicrowlistsectionItemModel({
    this.speakerphoneIcon,
    this.trainText,
    this.nowText,
    this.id,
  }) {
    speakerphoneIcon =
        speakerphoneIcon ?? ImageConstant.imgHeroiconsSolidSpeakerphone;
    trainText = trainText ??
        "Le train de Dakar à Diamniadio PNR arrive maintenant à la 1ère...";
    nowText = nowText ?? "Maintenant";
    id = id ?? "";
  }

  String? speakerphoneIcon;

  String? trainText;

  String? nowText;

  String? id;
}
