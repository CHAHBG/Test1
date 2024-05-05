import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/light_version_six_screen/models/light_version_six_model.dart';
part 'light_version_six_state.dart';

final lightVersionSixNotifier = StateNotifierProvider<LightVersionSixNotifier,
        LightVersionSixState>(
    (ref) => LightVersionSixNotifier(
        LightVersionSixState(lightVersionSixModelObj: LightVersionSixModel())));

/// A notifier that manages the state of a LightVersionSix according to the event that is dispatched to it.
class LightVersionSixNotifier extends StateNotifier<LightVersionSixState> {
  LightVersionSixNotifier(LightVersionSixState state) : super(state);
}
