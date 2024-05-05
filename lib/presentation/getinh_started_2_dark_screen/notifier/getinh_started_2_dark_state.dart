// ignore_for_file: must_be_immutable

part of 'getinh_started_2_dark_notifier.dart';

/// Represents the state of GetinhStarted2Dark in the application.
class GetinhStarted2DarkState extends Equatable {
  GetinhStarted2DarkState({this.getinhStarted2DarkModelObj});

  GetinhStarted2DarkModel? getinhStarted2DarkModelObj;

  @override
  List<Object?> get props => [
        getinhStarted2DarkModelObj,
      ];

  GetinhStarted2DarkState copyWith(
      {GetinhStarted2DarkModel? getinhStarted2DarkModelObj}) {
    return GetinhStarted2DarkState(
      getinhStarted2DarkModelObj:
          getinhStarted2DarkModelObj ?? this.getinhStarted2DarkModelObj,
    );
  }
}
