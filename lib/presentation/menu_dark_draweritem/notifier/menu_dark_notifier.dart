import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/menu_dark_draweritem/models/menu_dark_model.dart';
part 'menu_dark_state.dart';

final menuDarkNotifier = StateNotifierProvider<MenuDarkNotifier, MenuDarkState>(
  (ref) => MenuDarkNotifier(MenuDarkState(
    menuDarkModelObj: MenuDarkModel(),
  )),
);

/// A notifier that manages the state of a MenuDark according to the event that is dispatched to it.
class MenuDarkNotifier extends StateNotifier<MenuDarkState> {
  MenuDarkNotifier(MenuDarkState state) : super(state);
}
