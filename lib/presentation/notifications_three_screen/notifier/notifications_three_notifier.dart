import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy_item_model.dart';
import '../models/viewhierarchy1_item_model.dart';
import 'package:ibrahima_s_application_seter/presentation/notifications_three_screen/models/notifications_three_model.dart';
part 'notifications_three_state.dart';

final notificationsThreeNotifier =
    StateNotifierProvider<NotificationsThreeNotifier, NotificationsThreeState>(
        (ref) => NotificationsThreeNotifier(NotificationsThreeState(
                notificationsThreeModelObj:
                    NotificationsThreeModel(viewhierarchyItemList: [
              ViewhierarchyItemModel(
                  speakerphoneIcon: ImageConstant.imgHeroiconsSolidSpeakerphone,
                  trainText:
                      "Le train de Dakar à Diamniadio PNR arrive maintenant à la 1ère...",
                  nowText: "Maintenant"),
              ViewhierarchyItemModel(nowText: "5 mn")
            ], viewhierarchy1ItemList: [
              Viewhierarchy1ItemModel(
                  heroIcon: ImageConstant.imgHeroiconsSolidSpeakerphone,
                  dateText: "20 Mai"),
              Viewhierarchy1ItemModel(
                  heroIcon: ImageConstant.imgTelevision, dateText: "20 Mai"),
              Viewhierarchy1ItemModel(
                  heroIcon: ImageConstant.imgGlobe, dateText: "20 Mai"),
              Viewhierarchy1ItemModel(
                  heroIcon: ImageConstant.imgTelevision, dateText: "20 Mai")
            ]))));

/// A notifier that manages the state of a NotificationsThree according to the event that is dispatched to it.
class NotificationsThreeNotifier
    extends StateNotifier<NotificationsThreeState> {
  NotificationsThreeNotifier(NotificationsThreeState state) : super(state);
}
