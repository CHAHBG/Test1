// ignore_for_file: must_be_immutable

part of 'trains_dark_notifier.dart';

/// Represents the state of TrainsDark in the application.
class TrainsDarkState extends Equatable {
  TrainsDarkState({this.trainsDarkModelObj});

  TrainsDarkModel? trainsDarkModelObj;

  @override
  List<Object?> get props => [
        trainsDarkModelObj,
      ];

  TrainsDarkState copyWith({TrainsDarkModel? trainsDarkModelObj}) {
    return TrainsDarkState(
      trainsDarkModelObj: trainsDarkModelObj ?? this.trainsDarkModelObj,
    );
  }
}
