// ignore_for_file: must_be_immutable

part of 'abonnement_notifier.dart';

/// Represents the state of Abonnement in the application.
class AbonnementState extends Equatable {
  AbonnementState({
    this.searchController,
    this.abonnementModelObj,
  });

  TextEditingController? searchController;

  AbonnementModel? abonnementModelObj;

  @override
  List<Object?> get props => [
        searchController,
        abonnementModelObj,
      ];

  AbonnementState copyWith({
    TextEditingController? searchController,
    AbonnementModel? abonnementModelObj,
  }) {
    return AbonnementState(
      searchController: searchController ?? this.searchController,
      abonnementModelObj: abonnementModelObj ?? this.abonnementModelObj,
    );
  }
}
