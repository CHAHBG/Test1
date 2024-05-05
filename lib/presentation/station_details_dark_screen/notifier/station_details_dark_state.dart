// ignore_for_file: must_be_immutable

part of 'station_details_dark_notifier.dart';

/// Represents the state of StationDetailsDark in the application.
class StationDetailsDarkState extends Equatable {
  StationDetailsDarkState({this.stationDetailsDarkModelObj});

  StationDetailsDarkModel? stationDetailsDarkModelObj;

  @override
  List<Object?> get props => [
        stationDetailsDarkModelObj,
      ];

  StationDetailsDarkState copyWith(
      {StationDetailsDarkModel? stationDetailsDarkModelObj}) {
    return StationDetailsDarkState(
      stationDetailsDarkModelObj:
          stationDetailsDarkModelObj ?? this.stationDetailsDarkModelObj,
    );
  }
}
