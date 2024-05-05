import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/bagages_1_dark_screen/models/bagages_1_dark_model.dart';
part 'bagages_1_dark_state.dart';

final bagages1DarkNotifier =
    StateNotifierProvider<Bagages1DarkNotifier, Bagages1DarkState>(
        (ref) => Bagages1DarkNotifier(Bagages1DarkState(
            editTextController: TextEditingController(),
            selectedDropDownValue: SelectionPopupModel(title: ''),
            selectedDropDownValue1: SelectionPopupModel(title: ''),
            selectedDropDownValue2: SelectionPopupModel(title: ''),
            bagages1DarkModelObj: Bagages1DarkModel(dropdownItemList: [
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

/// A notifier that manages the state of a Bagages1Dark according to the event that is dispatched to it.
class Bagages1DarkNotifier extends StateNotifier<Bagages1DarkState> {
  Bagages1DarkNotifier(Bagages1DarkState state) : super(state);
}
