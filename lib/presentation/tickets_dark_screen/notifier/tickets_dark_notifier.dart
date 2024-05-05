import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import '../models/chipview_item_model.dart';
import 'package:ibrahima_s_application_seter/presentation/tickets_dark_screen/models/tickets_dark_model.dart';
part 'tickets_dark_state.dart';

final ticketsDarkNotifier =
    StateNotifierProvider<TicketsDarkNotifier, TicketsDarkState>((ref) =>
        TicketsDarkNotifier(TicketsDarkState(
            ticketsDarkModelObj: TicketsDarkModel(
                chipviewItemList:
                    List.generate(2, (index) => ChipviewItemModel())))));

/// A notifier that manages the state of a TicketsDark according to the event that is dispatched to it.
class TicketsDarkNotifier extends StateNotifier<TicketsDarkState> {
  TicketsDarkNotifier(TicketsDarkState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<ChipviewItemModel> newList = List<ChipviewItemModel>.from(
        state.ticketsDarkModelObj!.chipviewItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        ticketsDarkModelObj:
            state.ticketsDarkModelObj?.copyWith(chipviewItemList: newList));
  }
}
