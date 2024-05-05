import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/getinh_started_2_dark_screen/models/getinh_started_2_dark_model.dart';
part 'getinh_started_2_dark_state.dart';

final getinhStarted2DarkNotifier =
    StateNotifierProvider<GetinhStarted2DarkNotifier, GetinhStarted2DarkState>(
        (ref) => GetinhStarted2DarkNotifier(GetinhStarted2DarkState(
            getinhStarted2DarkModelObj: GetinhStarted2DarkModel())));

/// A notifier that manages the state of a GetinhStarted2Dark according to the event that is dispatched to it.
class GetinhStarted2DarkNotifier
    extends StateNotifier<GetinhStarted2DarkState> {
  GetinhStarted2DarkNotifier(GetinhStarted2DarkState state) : super(state);
}
