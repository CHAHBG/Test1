// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'dynamicrowlistsection_item_model.dart';
import 'viewhierarchylistsection_item_model.dart';

/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel extends Equatable {
  NotificationsModel({
    this.dynamicrowlistsectionItemList = const [],
    this.viewhierarchylistsectionItemList = const [],
  });

  List<DynamicrowlistsectionItemModel> dynamicrowlistsectionItemList;

  List<ViewhierarchylistsectionItemModel> viewhierarchylistsectionItemList;

  NotificationsModel copyWith({
    List<DynamicrowlistsectionItemModel>? dynamicrowlistsectionItemList,
    List<ViewhierarchylistsectionItemModel>? viewhierarchylistsectionItemList,
  }) {
    return NotificationsModel(
      dynamicrowlistsectionItemList:
          dynamicrowlistsectionItemList ?? this.dynamicrowlistsectionItemList,
      viewhierarchylistsectionItemList: viewhierarchylistsectionItemList ??
          this.viewhierarchylistsectionItemList,
    );
  }

  @override
  List<Object?> get props =>
      [dynamicrowlistsectionItemList, viewhierarchylistsectionItemList];
}
