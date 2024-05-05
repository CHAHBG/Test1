import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/getinh_started_screen/models/getinh_started_model.dart';
part 'getinh_started_state.dart';

final getinhStartedNotifier =
    StateNotifierProvider<GetinhStartedNotifier, GetinhStartedState>((ref) =>
        GetinhStartedNotifier(
            GetinhStartedState(getinhStartedModelObj: GetinhStartedModel())));

/// A notifier that manages the state of a GetinhStarted according to the event that is dispatched to it.
class GetinhStartedNotifier extends StateNotifier<GetinhStartedState> {
  GetinhStartedNotifier(GetinhStartedState state) : super(state);
}
