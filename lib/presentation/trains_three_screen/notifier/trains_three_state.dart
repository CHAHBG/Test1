// ignore_for_file: must_be_immutable

part of 'trains_three_notifier.dart';

/// Represents the state of TrainsThree in the application.
class TrainsThreeState extends Equatable {
  TrainsThreeState({this.trainsThreeModelObj});

  TrainsThreeModel? trainsThreeModelObj;

  @override
  List<Object?> get props => [
        trainsThreeModelObj,
      ];

  TrainsThreeState copyWith({TrainsThreeModel? trainsThreeModelObj}) {
    return TrainsThreeState(
      trainsThreeModelObj: trainsThreeModelObj ?? this.trainsThreeModelObj,
    );
  }
}
