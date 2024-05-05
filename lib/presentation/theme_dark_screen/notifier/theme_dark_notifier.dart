import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/theme_dark_screen/models/theme_dark_model.dart';
part 'theme_dark_state.dart';

final themeDarkNotifier =
    StateNotifierProvider<ThemeDarkNotifier, ThemeDarkState>((ref) =>
        ThemeDarkNotifier(ThemeDarkState(themeDarkModelObj: ThemeDarkModel())));

/// A notifier that manages the state of a ThemeDark according to the event that is dispatched to it.
class ThemeDarkNotifier extends StateNotifier<ThemeDarkState> {
  ThemeDarkNotifier(ThemeDarkState state) : super(state);
}
