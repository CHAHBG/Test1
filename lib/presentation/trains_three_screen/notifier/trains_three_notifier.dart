import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/trains_three_screen/models/trains_three_model.dart';
part 'trains_three_state.dart';

final trainsThreeNotifier =
    StateNotifierProvider<TrainsThreeNotifier, TrainsThreeState>(
  (ref) => TrainsThreeNotifier(TrainsThreeState(
    trainsThreeModelObj: TrainsThreeModel(),
  )),
);

/// A notifier that manages the state of a TrainsThree according to the event that is dispatched to it.
class TrainsThreeNotifier extends StateNotifier<TrainsThreeState> {
  TrainsThreeNotifier(TrainsThreeState state) : super(state);
}
