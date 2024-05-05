// ignore_for_file: must_be_immutable

part of 'bagages_1_dark_notifier.dart';

/// Represents the state of Bagages1Dark in the application.
class Bagages1DarkState extends Equatable {
  Bagages1DarkState({
    this.editTextController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.bagages1DarkModelObj,
  });

  TextEditingController? editTextController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  Bagages1DarkModel? bagages1DarkModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        bagages1DarkModelObj,
      ];

  Bagages1DarkState copyWith({
    TextEditingController? editTextController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    Bagages1DarkModel? bagages1DarkModelObj,
  }) {
    return Bagages1DarkState(
      editTextController: editTextController ?? this.editTextController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      bagages1DarkModelObj: bagages1DarkModelObj ?? this.bagages1DarkModelObj,
    );
  }
}
