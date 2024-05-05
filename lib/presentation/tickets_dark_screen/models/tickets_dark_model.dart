// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipview_item_model.dart';

/// This class defines the variables used in the [tickets_dark_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TicketsDarkModel extends Equatable {
  TicketsDarkModel({this.chipviewItemList = const []});

  List<ChipviewItemModel> chipviewItemList;

  TicketsDarkModel copyWith({List<ChipviewItemModel>? chipviewItemList}) {
    return TicketsDarkModel(
      chipviewItemList: chipviewItemList ?? this.chipviewItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewItemList];
}
