// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [hamburger_menu_draweritem],
/// and is typically used to hold data that is passed between different parts of the application.
class HamburgerMenuModel extends Equatable {
  HamburgerMenuModel();

  HamburgerMenuModel copyWith() {
    return HamburgerMenuModel();
  }

  @override
  List<Object?> get props => [];
}
