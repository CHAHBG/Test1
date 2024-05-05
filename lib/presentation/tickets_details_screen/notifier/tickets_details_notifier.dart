import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/tickets_details_screen/models/tickets_details_model.dart';
part 'tickets_details_state.dart';

final ticketsDetailsNotifier = StateNotifierProvider<TicketsDetailsNotifier,
        TicketsDetailsState>(
    (ref) => TicketsDetailsNotifier(
        TicketsDetailsState(ticketsDetailsModelObj: TicketsDetailsModel())));

/// A notifier that manages the state of a TicketsDetails according to the event that is dispatched to it.
class TicketsDetailsNotifier extends StateNotifier<TicketsDetailsState> {
  TicketsDetailsNotifier(TicketsDetailsState state) : super(state);
}
