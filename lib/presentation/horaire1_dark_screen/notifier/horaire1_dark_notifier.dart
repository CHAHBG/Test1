import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/horaire1_dark_screen/models/horaire1_dark_model.dart';
part 'horaire1_dark_state.dart';

final horaire1DarkNotifier =
    StateNotifierProvider<Horaire1DarkNotifier, Horaire1DarkState>(
        (ref) => Horaire1DarkNotifier(Horaire1DarkState(
            selectedDropDownValue: SelectionPopupModel(title: ''),
            selectedDropDownValue1: SelectionPopupModel(title: ''),
            selectedDropDownValue2: SelectionPopupModel(title: ''),
            horaire1DarkModelObj: Horaire1DarkModel(dropdownItemList: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ], dropdownItemList1: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ], dropdownItemList2: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ]))));

/// A notifier that manages the state of a Horaire1Dark according to the event that is dispatched to it.
class Horaire1DarkNotifier extends StateNotifier<Horaire1DarkState> {
  Horaire1DarkNotifier(Horaire1DarkState state) : super(state);
}
