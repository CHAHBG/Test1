// ignore_for_file: must_be_immutable

part of 'parcle_two_notifier.dart';

/// Represents the state of ParcleTwo in the application.
class ParcleTwoState extends Equatable {
  ParcleTwoState({this.parcleTwoModelObj});

  ParcleTwoModel? parcleTwoModelObj;

  @override
  List<Object?> get props => [
        parcleTwoModelObj,
      ];

  ParcleTwoState copyWith({ParcleTwoModel? parcleTwoModelObj}) {
    return ParcleTwoState(
      parcleTwoModelObj: parcleTwoModelObj ?? this.parcleTwoModelObj,
    );
  }
}
