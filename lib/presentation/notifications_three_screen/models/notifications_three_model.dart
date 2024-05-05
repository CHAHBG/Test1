// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'viewhierarchy_item_model.dart';
import 'viewhierarchy1_item_model.dart';

/// This class defines the variables used in the [notifications_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsThreeModel extends Equatable {
  NotificationsThreeModel({
    this.viewhierarchyItemList = const [],
    this.viewhierarchy1ItemList = const [],
  });

  List<ViewhierarchyItemModel> viewhierarchyItemList;

  List<Viewhierarchy1ItemModel> viewhierarchy1ItemList;

  NotificationsThreeModel copyWith({
    List<ViewhierarchyItemModel>? viewhierarchyItemList,
    List<Viewhierarchy1ItemModel>? viewhierarchy1ItemList,
  }) {
    return NotificationsThreeModel(
      viewhierarchyItemList:
          viewhierarchyItemList ?? this.viewhierarchyItemList,
      viewhierarchy1ItemList:
          viewhierarchy1ItemList ?? this.viewhierarchy1ItemList,
    );
  }

  @override
  List<Object?> get props => [viewhierarchyItemList, viewhierarchy1ItemList];
}
