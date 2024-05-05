import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/theme_light_screen/models/theme_light_model.dart';
part 'theme_light_state.dart';

final themeLightNotifier =
    StateNotifierProvider<ThemeLightNotifier, ThemeLightState>(
  (ref) => ThemeLightNotifier(ThemeLightState(
    themeLightModelObj: ThemeLightModel(),
  )),
);

/// A notifier that manages the state of a ThemeLight according to the event that is dispatched to it.
class ThemeLightNotifier extends StateNotifier<ThemeLightState> {
  ThemeLightNotifier(ThemeLightState state) : super(state);
}
