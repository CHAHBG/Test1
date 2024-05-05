// ignore_for_file: must_be_immutable

part of 'schedule_two_notifier.dart';

/// Represents the state of ScheduleTwo in the application.
class ScheduleTwoState extends Equatable {
  ScheduleTwoState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedDropDownValue3,
    this.scheduleTwoModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  ScheduleTwoModel? scheduleTwoModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedDropDownValue3,
        scheduleTwoModelObj,
      ];

  ScheduleTwoState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    ScheduleTwoModel? scheduleTwoModelObj,
  }) {
    return ScheduleTwoState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
          selectedDropDownValue3 ?? this.selectedDropDownValue3,
      scheduleTwoModelObj: scheduleTwoModelObj ?? this.scheduleTwoModelObj,
    );
  }
}
