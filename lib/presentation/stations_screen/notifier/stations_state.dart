// ignore_for_file: must_be_immutable

part of 'stations_notifier.dart';

/// Represents the state of Stations in the application.
class StationsState extends Equatable {
  StationsState({
    this.searchController,
    this.stationsModelObj,
  });

  TextEditingController? searchController;

  StationsModel? stationsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        stationsModelObj,
      ];

  StationsState copyWith({
    TextEditingController? searchController,
    StationsModel? stationsModelObj,
  }) {
    return StationsState(
      searchController: searchController ?? this.searchController,
      stationsModelObj: stationsModelObj ?? this.stationsModelObj,
    );
  }
}
