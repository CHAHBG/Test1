// ignore_for_file: must_be_immutable

part of 'station_details_notifier.dart';

/// Represents the state of StationDetails in the application.
class StationDetailsState extends Equatable {
  StationDetailsState({this.stationDetailsModelObj});

  StationDetailsModel? stationDetailsModelObj;

  @override
  List<Object?> get props => [
        stationDetailsModelObj,
      ];

  StationDetailsState copyWith({StationDetailsModel? stationDetailsModelObj}) {
    return StationDetailsState(
      stationDetailsModelObj:
          stationDetailsModelObj ?? this.stationDetailsModelObj,
    );
  }
}
