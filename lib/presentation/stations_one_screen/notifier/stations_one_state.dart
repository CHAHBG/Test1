// ignore_for_file: must_be_immutable

part of 'stations_one_notifier.dart';

/// Represents the state of StationsOne in the application.
class StationsOneState extends Equatable {
  StationsOneState({
    this.searchController,
    this.stationsOneModelObj,
  });

  TextEditingController? searchController;

  StationsOneModel? stationsOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        stationsOneModelObj,
      ];

  StationsOneState copyWith({
    TextEditingController? searchController,
    StationsOneModel? stationsOneModelObj,
  }) {
    return StationsOneState(
      searchController: searchController ?? this.searchController,
      stationsOneModelObj: stationsOneModelObj ?? this.stationsOneModelObj,
    );
  }
}
