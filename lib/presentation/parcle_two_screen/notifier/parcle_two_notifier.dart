import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/parcle_two_screen/models/parcle_two_model.dart';
part 'parcle_two_state.dart';

final parcleTwoNotifier =
    StateNotifierProvider<ParcleTwoNotifier, ParcleTwoState>((ref) =>
        ParcleTwoNotifier(ParcleTwoState(parcleTwoModelObj: ParcleTwoModel())));

/// A notifier that manages the state of a ParcleTwo according to the event that is dispatched to it.
class ParcleTwoNotifier extends StateNotifier<ParcleTwoState> {
  ParcleTwoNotifier(ParcleTwoState state) : super(state);
}
