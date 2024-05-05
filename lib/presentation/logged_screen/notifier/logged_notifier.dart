import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/logged_screen/models/logged_model.dart';
part 'logged_state.dart';

final loggedNotifier = StateNotifierProvider<LoggedNotifier, LoggedState>(
  (ref) => LoggedNotifier(LoggedState(
    loggedModelObj: LoggedModel(),
  )),
);

/// A notifier that manages the state of a Logged according to the event that is dispatched to it.
class LoggedNotifier extends StateNotifier<LoggedState> {
  LoggedNotifier(LoggedState state) : super(state);
}
