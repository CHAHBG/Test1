import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/dark_version_six_screen/models/dark_version_six_model.dart';
part 'dark_version_six_state.dart';

final darkVersionSixNotifier =
    StateNotifierProvider<DarkVersionSixNotifier, DarkVersionSixState>(
  (ref) => DarkVersionSixNotifier(DarkVersionSixState(
    darkVersionSixModelObj: DarkVersionSixModel(),
  )),
);

/// A notifier that manages the state of a DarkVersionSix according to the event that is dispatched to it.
class DarkVersionSixNotifier extends StateNotifier<DarkVersionSixState> {
  DarkVersionSixNotifier(DarkVersionSixState state) : super(state);
}
