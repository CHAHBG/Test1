import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/r_glement_two_screen/models/r_glement_two_model.dart';
part 'r_glement_two_state.dart';

final rGlementTwoNotifier =
    StateNotifierProvider<RGlementTwoNotifier, RGlementTwoState>((ref) =>
        RGlementTwoNotifier(
            RGlementTwoState(rGlementTwoModelObj: RGlementTwoModel())));

/// A notifier that manages the state of a RGlementTwo according to the event that is dispatched to it.
class RGlementTwoNotifier extends StateNotifier<RGlementTwoState> {
  RGlementTwoNotifier(RGlementTwoState state) : super(state);
}
