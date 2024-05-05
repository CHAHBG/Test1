import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/trains_details_screen/models/trains_details_model.dart';
part 'trains_details_state.dart';

final trainsDetailsNotifier =
    StateNotifierProvider<TrainsDetailsNotifier, TrainsDetailsState>((ref) =>
        TrainsDetailsNotifier(
            TrainsDetailsState(trainsDetailsModelObj: TrainsDetailsModel())));

/// A notifier that manages the state of a TrainsDetails according to the event that is dispatched to it.
class TrainsDetailsNotifier extends StateNotifier<TrainsDetailsState> {
  TrainsDetailsNotifier(TrainsDetailsState state) : super(state);
}
