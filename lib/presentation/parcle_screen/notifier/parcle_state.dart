// ignore_for_file: must_be_immutable

part of 'parcle_notifier.dart';

/// Represents the state of Parcle in the application.
class ParcleState extends Equatable {
  ParcleState({
    this.editTextController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.parcleModelObj,
  });

  TextEditingController? editTextController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  ParcleModel? parcleModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        parcleModelObj,
      ];

  ParcleState copyWith({
    TextEditingController? editTextController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    ParcleModel? parcleModelObj,
  }) {
    return ParcleState(
      editTextController: editTextController ?? this.editTextController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      parcleModelObj: parcleModelObj ?? this.parcleModelObj,
    );
  }
}
