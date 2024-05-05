import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import '../models/dynamicrowlistsection_item_model.dart';
import '../models/viewhierarchylistsection_item_model.dart';
import 'package:ibrahima_s_application_seter/presentation/notifications_screen/models/notifications_model.dart';
part 'notifications_state.dart';

final notificationsNotifier =
    StateNotifierProvider<NotificationsNotifier, NotificationsState>((ref) =>
        NotificationsNotifier(NotificationsState(
            notificationsModelObj:
                NotificationsModel(dynamicrowlistsectionItemList: [
          DynamicrowlistsectionItemModel(
              speakerphoneIcon: ImageConstant.imgHeroiconsSolidSpeakerphone,
              trainText:
                  "Le train de Dakar à Diamniadio PNR arrive maintenant à la 1ère...",
              nowText: "Maintenant")
        ], viewhierarchylistsectionItemList: [
          ViewhierarchylistsectionItemModel(
              speakerphoneIcon: ImageConstant.imgHeroiconsSolidSpeakerphone,
              dateText: "20 Mai"),
          ViewhierarchylistsectionItemModel(
              speakerphoneIcon: ImageConstant.imgTelevisionPrimary,
              dateText: "20 Mai"),
          ViewhierarchylistsectionItemModel(
              speakerphoneIcon: ImageConstant.imgGlobePrimary,
              dateText: "20 Mai"),
          ViewhierarchylistsectionItemModel(
              speakerphoneIcon: ImageConstant.imgTelevisionPrimary,
              dateText: "20 Mai")
        ]))));

/// A notifier that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsNotifier extends StateNotifier<NotificationsState> {
  NotificationsNotifier(NotificationsState state) : super(state);
}
