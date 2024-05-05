// ignore_for_file: must_be_immutable

part of 'carte_notifier.dart';

/// Represents the state of Carte in the application.
class CarteState extends Equatable {
  CarteState({this.carteModelObj});

  CarteModel? carteModelObj;

  @override
  List<Object?> get props => [
        carteModelObj,
      ];

  CarteState copyWith({CarteModel? carteModelObj}) {
    return CarteState(
      carteModelObj: carteModelObj ?? this.carteModelObj,
    );
  }
}
