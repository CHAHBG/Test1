// ignore_for_file: must_be_immutable

part of 'abonnement_dark_notifier.dart';

/// Represents the state of AbonnementDark in the application.
class AbonnementDarkState extends Equatable {
  AbonnementDarkState({
    this.searchController,
    this.abonnementDarkModelObj,
  });

  TextEditingController? searchController;

  AbonnementDarkModel? abonnementDarkModelObj;

  @override
  List<Object?> get props => [
        searchController,
        abonnementDarkModelObj,
      ];

  AbonnementDarkState copyWith({
    TextEditingController? searchController,
    AbonnementDarkModel? abonnementDarkModelObj,
  }) {
    return AbonnementDarkState(
      searchController: searchController ?? this.searchController,
      abonnementDarkModelObj:
          abonnementDarkModelObj ?? this.abonnementDarkModelObj,
    );
  }
}
