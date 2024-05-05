import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/bagages_2_dark_screen/models/bagages_2_dark_model.dart';
part 'bagages_2_dark_state.dart';

final bagages2DarkNotifier =
    StateNotifierProvider<Bagages2DarkNotifier, Bagages2DarkState>((ref) =>
        Bagages2DarkNotifier(
            Bagages2DarkState(bagages2DarkModelObj: Bagages2DarkModel())));

/// A notifier that manages the state of a Bagages2Dark according to the event that is dispatched to it.
class Bagages2DarkNotifier extends StateNotifier<Bagages2DarkState> {
  Bagages2DarkNotifier(Bagages2DarkState state) : super(state);
}
