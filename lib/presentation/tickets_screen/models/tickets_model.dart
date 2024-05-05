// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipview_item_model.dart';

/// This class defines the variables used in the [tickets_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TicketsModel extends Equatable {
  TicketsModel({this.chipviewItemList = const []});

  List<ChipviewItemModell> chipviewItemList;

  TicketsModel copyWith({List<ChipviewItemModell>? chipviewItemList}) {
    return TicketsModel(
      chipviewItemList: chipviewItemList ?? this.chipviewItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewItemList];
}
