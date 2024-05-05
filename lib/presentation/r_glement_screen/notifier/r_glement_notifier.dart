import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/r_glement_screen/models/r_glement_model.dart';
part 'r_glement_state.dart';

final rGlementNotifier = StateNotifierProvider<RGlementNotifier, RGlementState>(
    (ref) =>
        RGlementNotifier(RGlementState(rGlementModelObj: RGlementModel())));

/// A notifier that manages the state of a RGlement according to the event that is dispatched to it.
class RGlementNotifier extends StateNotifier<RGlementState> {
  RGlementNotifier(RGlementState state) : super(state);
}
