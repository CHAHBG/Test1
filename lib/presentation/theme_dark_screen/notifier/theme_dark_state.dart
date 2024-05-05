// ignore_for_file: must_be_immutable

part of 'theme_dark_notifier.dart';

/// Represents the state of ThemeDark in the application.
class ThemeDarkState extends Equatable {
  ThemeDarkState({this.themeDarkModelObj});

  ThemeDarkModel? themeDarkModelObj;

  @override
  List<Object?> get props => [
        themeDarkModelObj,
      ];

  ThemeDarkState copyWith({ThemeDarkModel? themeDarkModelObj}) {
    return ThemeDarkState(
      themeDarkModelObj: themeDarkModelObj ?? this.themeDarkModelObj,
    );
  }
}
