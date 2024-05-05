import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/parcle_screen/models/parcle_model.dart';
part 'parcle_state.dart';

final parcleNotifier = StateNotifierProvider<ParcleNotifier, ParcleState>(
    (ref) => ParcleNotifier(ParcleState(
        editTextController: TextEditingController(),
        selectedDropDownValue: SelectionPopupModel(title: ''),
        selectedDropDownValue1: SelectionPopupModel(title: ''),
        selectedDropDownValue2: SelectionPopupModel(title: ''),
        parcleModelObj: ParcleModel(dropdownItemList: [
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

/// A notifier that manages the state of a Parcle according to the event that is dispatched to it.
class ParcleNotifier extends StateNotifier<ParcleState> {
  ParcleNotifier(ParcleState state) : super(state);
}
