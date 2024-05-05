// ignore_for_file: must_be_immutable

part of 'horaire1_dark_notifier.dart';

/// Represents the state of Horaire1Dark in the application.
class Horaire1DarkState extends Equatable {
  Horaire1DarkState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.horaire1DarkModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  Horaire1DarkModel? horaire1DarkModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        horaire1DarkModelObj,
      ];

  Horaire1DarkState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    Horaire1DarkModel? horaire1DarkModelObj,
  }) {
    return Horaire1DarkState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      horaire1DarkModelObj: horaire1DarkModelObj ?? this.horaire1DarkModelObj,
    );
  }
}
