import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/getinh_started_two_screen/models/getinh_started_two_model.dart';
part 'getinh_started_two_state.dart';

final getinhStartedTwoNotifier =
    StateNotifierProvider<GetinhStartedTwoNotifier, GetinhStartedTwoState>(
        (ref) => GetinhStartedTwoNotifier(GetinhStartedTwoState(
            getinhStartedTwoModelObj: GetinhStartedTwoModel())));

/// A notifier that manages the state of a GetinhStartedTwo according to the event that is dispatched to it.
class GetinhStartedTwoNotifier extends StateNotifier<GetinhStartedTwoState> {
  GetinhStartedTwoNotifier(GetinhStartedTwoState state) : super(state);
}
