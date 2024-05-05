// ignore_for_file: must_be_immutable

part of 'trains_details_notifier.dart';

/// Represents the state of TrainsDetails in the application.
class TrainsDetailsState extends Equatable {
  TrainsDetailsState({this.trainsDetailsModelObj});

  TrainsDetailsModel? trainsDetailsModelObj;

  @override
  List<Object?> get props => [
        trainsDetailsModelObj,
      ];

  TrainsDetailsState copyWith({TrainsDetailsModel? trainsDetailsModelObj}) {
    return TrainsDetailsState(
      trainsDetailsModelObj:
          trainsDetailsModelObj ?? this.trainsDetailsModelObj,
    );
  }
}
