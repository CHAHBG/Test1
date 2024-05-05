import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/tickets_2_dark_screen/models/tickets_2_dark_model.dart';
part 'tickets_2_dark_state.dart';

final tickets2DarkNotifier =
    StateNotifierProvider<Tickets2DarkNotifier, Tickets2DarkState>((ref) =>
        Tickets2DarkNotifier(
            Tickets2DarkState(tickets2DarkModelObj: Tickets2DarkModel())));

/// A notifier that manages the state of a Tickets2Dark according to the event that is dispatched to it.
class Tickets2DarkNotifier extends StateNotifier<Tickets2DarkState> {
  Tickets2DarkNotifier(Tickets2DarkState state) : super(state);
}
