// ignore_for_file: must_be_immutable

part of 'getinh_started_two_notifier.dart';

/// Represents the state of GetinhStartedTwo in the application.
class GetinhStartedTwoState extends Equatable {
  GetinhStartedTwoState({this.getinhStartedTwoModelObj});

  GetinhStartedTwoModel? getinhStartedTwoModelObj;

  @override
  List<Object?> get props => [
        getinhStartedTwoModelObj,
      ];

  GetinhStartedTwoState copyWith(
      {GetinhStartedTwoModel? getinhStartedTwoModelObj}) {
    return GetinhStartedTwoState(
      getinhStartedTwoModelObj:
          getinhStartedTwoModelObj ?? this.getinhStartedTwoModelObj,
    );
  }
}
