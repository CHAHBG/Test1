import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/carte_dark_screen/models/carte_dark_model.dart';
part 'carte_dark_state.dart';

final carteDarkNotifier =
    StateNotifierProvider<CarteDarkNotifier, CarteDarkState>((ref) =>
        CarteDarkNotifier(CarteDarkState(carteDarkModelObj: CarteDarkModel())));

/// A notifier that manages the state of a CarteDark according to the event that is dispatched to it.
class CarteDarkNotifier extends StateNotifier<CarteDarkState> {
  CarteDarkNotifier(CarteDarkState state) : super(state);
}
