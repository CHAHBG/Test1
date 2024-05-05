import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/carte_screen/models/carte_model.dart';
part 'carte_state.dart';

final carteNotifier = StateNotifierProvider<CarteNotifier, CarteState>(
    (ref) => CarteNotifier(CarteState(carteModelObj: CarteModel())));

/// A notifier that manages the state of a Carte according to the event that is dispatched to it.
class CarteNotifier extends StateNotifier<CarteState> {
  CarteNotifier(CarteState state) : super(state);
}
