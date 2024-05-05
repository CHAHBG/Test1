import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/getinh_started_dark_screen/models/getinh_started_dark_model.dart';
part 'getinh_started_dark_state.dart';

final getinhStartedDarkNotifier =
    StateNotifierProvider<GetinhStartedDarkNotifier, GetinhStartedDarkState>(
        (ref) => GetinhStartedDarkNotifier(GetinhStartedDarkState(
            getinhStartedDarkModelObj: GetinhStartedDarkModel())));

/// A notifier that manages the state of a GetinhStartedDark according to the event that is dispatched to it.
class GetinhStartedDarkNotifier extends StateNotifier<GetinhStartedDarkState> {
  GetinhStartedDarkNotifier(GetinhStartedDarkState state) : super(state);
}
