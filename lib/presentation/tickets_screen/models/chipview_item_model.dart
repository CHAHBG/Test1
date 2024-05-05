// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipview_item_widget] screen.
class ChipviewItemModell extends Equatable {
  ChipviewItemModell({
    this.colobane,
    this.isSelected,
  }) {
    colobane = colobane ?? "Colobane";
    isSelected = isSelected ?? false;
  }

  String? colobane;

  bool? isSelected;

  ChipviewItemModell copyWith({
    String? colobane,
    bool? isSelected,
  }) {
    return ChipviewItemModell(
      colobane: colobane ?? this.colobane,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [colobane, isSelected];
}
