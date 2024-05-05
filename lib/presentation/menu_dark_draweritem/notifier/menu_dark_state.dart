// ignore_for_file: must_be_immutable

part of 'menu_dark_notifier.dart';

/// Represents the state of MenuDark in the application.
class MenuDarkState extends Equatable {
  MenuDarkState({this.menuDarkModelObj});

  MenuDarkModel? menuDarkModelObj;

  @override
  List<Object?> get props => [
        menuDarkModelObj,
      ];

  MenuDarkState copyWith({MenuDarkModel? menuDarkModelObj}) {
    return MenuDarkState(
      menuDarkModelObj: menuDarkModelObj ?? this.menuDarkModelObj,
    );
  }
}
