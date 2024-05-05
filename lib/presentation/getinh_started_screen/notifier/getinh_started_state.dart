// ignore_for_file: must_be_immutable

part of 'getinh_started_notifier.dart';

/// Represents the state of GetinhStarted in the application.
class GetinhStartedState extends Equatable {
  GetinhStartedState({this.getinhStartedModelObj});

  GetinhStartedModel? getinhStartedModelObj;

  @override
  List<Object?> get props => [
        getinhStartedModelObj,
      ];

  GetinhStartedState copyWith({GetinhStartedModel? getinhStartedModelObj}) {
    return GetinhStartedState(
      getinhStartedModelObj:
          getinhStartedModelObj ?? this.getinhStartedModelObj,
    );
  }
}
