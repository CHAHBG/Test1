// ignore_for_file: must_be_immutable

part of 'light_version_six_notifier.dart';

/// Represents the state of LightVersionSix in the application.
class LightVersionSixState extends Equatable {
  LightVersionSixState({this.lightVersionSixModelObj});

  LightVersionSixModel? lightVersionSixModelObj;

  @override
  List<Object?> get props => [
        lightVersionSixModelObj,
      ];

  LightVersionSixState copyWith(
      {LightVersionSixModel? lightVersionSixModelObj}) {
    return LightVersionSixState(
      lightVersionSixModelObj:
          lightVersionSixModelObj ?? this.lightVersionSixModelObj,
    );
  }
}
