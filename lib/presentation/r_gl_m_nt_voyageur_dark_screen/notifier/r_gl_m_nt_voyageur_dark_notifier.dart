import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/r_gl_m_nt_voyageur_dark_screen/models/r_gl_m_nt_voyageur_dark_model.dart';
part 'r_gl_m_nt_voyageur_dark_state.dart';

final rGlMNtVoyageurDarkNotifier =
    StateNotifierProvider<RGlMNtVoyageurDarkNotifier, RGlMNtVoyageurDarkState>(
        (ref) => RGlMNtVoyageurDarkNotifier(RGlMNtVoyageurDarkState(
            rGlMNtVoyageurDarkModelObj: RGlMNtVoyageurDarkModel())));

/// A notifier that manages the state of a RGlMNtVoyageurDark according to the event that is dispatched to it.
class RGlMNtVoyageurDarkNotifier
    extends StateNotifier<RGlMNtVoyageurDarkState> {
  RGlMNtVoyageurDarkNotifier(RGlMNtVoyageurDarkState state) : super(state);
}
