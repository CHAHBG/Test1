import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/schedule_two_screen/models/schedule_two_model.dart';
part 'schedule_two_state.dart';

final scheduleTwoNotifier =
    StateNotifierProvider<ScheduleTwoNotifier, ScheduleTwoState>(
        (ref) => ScheduleTwoNotifier(ScheduleTwoState(
            selectedDropDownValue: SelectionPopupModel(title: ''),
            selectedDropDownValue1: SelectionPopupModel(title: ''),
            selectedDropDownValue2: SelectionPopupModel(title: ''),
            selectedDropDownValue3: SelectionPopupModel(title: ''),
            scheduleTwoModelObj: ScheduleTwoModel(dropdownItemList: [
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
            ], dropdownItemList3: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ]))));

/// A notifier that manages the state of a ScheduleTwo according to the event that is dispatched to it.
class ScheduleTwoNotifier extends StateNotifier<ScheduleTwoState> {
  ScheduleTwoNotifier(ScheduleTwoState state) : super(state);
}
