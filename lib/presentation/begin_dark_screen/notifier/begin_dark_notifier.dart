import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/begin_dark_screen/models/begin_dark_model.dart';
part 'begin_dark_state.dart';

final beginDarkNotifier =
    StateNotifierProvider<BeginDarkNotifier, BeginDarkState>(
  (ref) => BeginDarkNotifier(BeginDarkState(
    beginDarkModelObj: BeginDarkModel(),
  )),
);

/// A notifier that manages the state of a BeginDark according to the event that is dispatched to it.
class BeginDarkNotifier extends StateNotifier<BeginDarkState> {
  BeginDarkNotifier(BeginDarkState state) : super(state);
}
