import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/hamburger_menu_draweritem/models/hamburger_menu_model.dart';
part 'hamburger_menu_state.dart';

final hamburgerMenuNotifier =
    StateNotifierProvider<HamburgerMenuNotifier, HamburgerMenuState>(
  (ref) => HamburgerMenuNotifier(HamburgerMenuState(
    hamburgerMenuModelObj: HamburgerMenuModel(),
  )),
);

/// A notifier that manages the state of a HamburgerMenu according to the event that is dispatched to it.
class HamburgerMenuNotifier extends StateNotifier<HamburgerMenuState> {
  HamburgerMenuNotifier(HamburgerMenuState state) : super(state);
}
