import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/begin_screen/models/begin_model.dart';
part 'begin_state.dart';

final beginNotifier = StateNotifierProvider<BeginNotifier, BeginState>(
    (ref) => BeginNotifier(BeginState(beginModelObj: BeginModel())));

/// A notifier that manages the state of a Begin according to the event that is dispatched to it.
class BeginNotifier extends StateNotifier<BeginState> {
  BeginNotifier(BeginState state) : super(state);
}
