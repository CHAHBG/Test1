import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/station_details_dark_screen/models/station_details_dark_model.dart';
part 'station_details_dark_state.dart';

final stationDetailsDarkNotifier =
    StateNotifierProvider<StationDetailsDarkNotifier, StationDetailsDarkState>(
        (ref) => StationDetailsDarkNotifier(StationDetailsDarkState(
            stationDetailsDarkModelObj: StationDetailsDarkModel())));

/// A notifier that manages the state of a StationDetailsDark according to the event that is dispatched to it.
class StationDetailsDarkNotifier
    extends StateNotifier<StationDetailsDarkState> {
  StationDetailsDarkNotifier(StationDetailsDarkState state) : super(state);
}
