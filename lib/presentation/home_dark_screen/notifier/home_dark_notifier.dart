import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/home_dark_screen/models/home_dark_model.dart';
part 'home_dark_state.dart';

final homeDarkNotifier = StateNotifierProvider<HomeDarkNotifier, HomeDarkState>(
    (ref) =>
        HomeDarkNotifier(HomeDarkState(homeDarkModelObj: HomeDarkModel())));

/// A notifier that manages the state of a HomeDark according to the event that is dispatched to it.
class HomeDarkNotifier extends StateNotifier<HomeDarkState> {
  HomeDarkNotifier(HomeDarkState state) : super(state);
}
