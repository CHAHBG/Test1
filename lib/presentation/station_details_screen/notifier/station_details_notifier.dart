import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/station_details_screen/models/station_details_model.dart';
part 'station_details_state.dart';

final stationDetailsNotifier = StateNotifierProvider<StationDetailsNotifier,
        StationDetailsState>(
    (ref) => StationDetailsNotifier(
        StationDetailsState(stationDetailsModelObj: StationDetailsModel())));

/// A notifier that manages the state of a StationDetails according to the event that is dispatched to it.
class StationDetailsNotifier extends StateNotifier<StationDetailsState> {
  StationDetailsNotifier(StationDetailsState state) : super(state);
}
