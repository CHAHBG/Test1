import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/trains_dark_screen/models/trains_dark_model.dart';
part 'trains_dark_state.dart';

final trainsDarkNotifier =
    StateNotifierProvider<TrainsDarkNotifier, TrainsDarkState>(
  (ref) => TrainsDarkNotifier(TrainsDarkState(
    trainsDarkModelObj: TrainsDarkModel(),
  )),
);

/// A notifier that manages the state of a TrainsDark according to the event that is dispatched to it.
class TrainsDarkNotifier extends StateNotifier<TrainsDarkState> {
  TrainsDarkNotifier(TrainsDarkState state) : super(state);
}
