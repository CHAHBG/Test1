// ignore_for_file: must_be_immutable

part of 'theme_light_notifier.dart';

/// Represents the state of ThemeLight in the application.
class ThemeLightState extends Equatable {
  ThemeLightState({this.themeLightModelObj});

  ThemeLightModel? themeLightModelObj;

  @override
  List<Object?> get props => [
        themeLightModelObj,
      ];

  ThemeLightState copyWith({ThemeLightModel? themeLightModelObj}) {
    return ThemeLightState(
      themeLightModelObj: themeLightModelObj ?? this.themeLightModelObj,
    );
  }
}
