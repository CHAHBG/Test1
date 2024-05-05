import 'package:equatable/equatable.dart';
import '../../tickets_dark_screen/models/chipview_item_model.dart';
import '../models/tickets_model.dart';
import '/core/app_export.dart';
import '../models/chipview_item_model.dart';
import 'package:ibrahima_s_application_seter/presentation/tickets_dark_screen/models/tickets_dark_model.dart';
part 'tickets_state.dart';

final ticketsNotifier =
StateNotifierProvider<TicketsNotifier, TicketsState>((ref) =>
    TicketsNotifier(TicketsState(
        ticketsModelObj: TicketsDarkModel(
            chipviewItemList:
            List.generate(2, (index) => ChipviewItemModel())))));

/// A notifier that manages the state of a TicketsDark according to the event that is dispatched to it.
class TicketsNotifier extends StateNotifier<TicketsState> {
  TicketsNotifier(TicketsState state) : super(state);

  void onSelectedChipView1(
      int index,
      bool value,
      ) {
    List<ChipviewItemModel> newList = List<ChipviewItemModel>.from(
        state.ticketsModelObj!.chipviewItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        ticketsModelObj:
        state.ticketsModelObj?.copyWith(chipviewItemList: newList));
  }

}

