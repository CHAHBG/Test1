// ignore_for_file: must_be_immutable

part of 'getinh_started_dark_notifier.dart';

/// Represents the state of GetinhStartedDark in the application.
class GetinhStartedDarkState extends Equatable {
  GetinhStartedDarkState({this.getinhStartedDarkModelObj});

  GetinhStartedDarkModel? getinhStartedDarkModelObj;

  @override
  List<Object?> get props => [
        getinhStartedDarkModelObj,
      ];

  GetinhStartedDarkState copyWith(
      {GetinhStartedDarkModel? getinhStartedDarkModelObj}) {
    return GetinhStartedDarkState(
      getinhStartedDarkModelObj:
          getinhStartedDarkModelObj ?? this.getinhStartedDarkModelObj,
    );
  }
}
