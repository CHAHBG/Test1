// ignore_for_file: must_be_immutable

part of 'dark_version_six_notifier.dart';

/// Represents the state of DarkVersionSix in the application.
class DarkVersionSixState extends Equatable {
  DarkVersionSixState({this.darkVersionSixModelObj});

  DarkVersionSixModel? darkVersionSixModelObj;

  @override
  List<Object?> get props => [
        darkVersionSixModelObj,
      ];

  DarkVersionSixState copyWith({DarkVersionSixModel? darkVersionSixModelObj}) {
    return DarkVersionSixState(
      darkVersionSixModelObj:
          darkVersionSixModelObj ?? this.darkVersionSixModelObj,
    );
  }
}
