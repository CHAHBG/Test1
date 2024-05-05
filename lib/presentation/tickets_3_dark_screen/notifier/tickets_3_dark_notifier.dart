import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/tickets_3_dark_screen/models/tickets_3_dark_model.dart';
part 'tickets_3_dark_state.dart';

final tickets3DarkNotifier =
    StateNotifierProvider<Tickets3DarkNotifier, Tickets3DarkState>((ref) =>
        Tickets3DarkNotifier(
            Tickets3DarkState(tickets3DarkModelObj: Tickets3DarkModel())));

/// A notifier that manages the state of a Tickets3Dark according to the event that is dispatched to it.
class Tickets3DarkNotifier extends StateNotifier<Tickets3DarkState> {
  Tickets3DarkNotifier(Tickets3DarkState state) : super(state);
}
