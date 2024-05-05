// ignore_for_file: must_be_immutable

part of 'r_glement_two_notifier.dart';

/// Represents the state of RGlementTwo in the application.
class RGlementTwoState extends Equatable {
  RGlementTwoState({this.rGlementTwoModelObj});

  RGlementTwoModel? rGlementTwoModelObj;

  @override
  List<Object?> get props => [
        rGlementTwoModelObj,
      ];

  RGlementTwoState copyWith({RGlementTwoModel? rGlementTwoModelObj}) {
    return RGlementTwoState(
      rGlementTwoModelObj: rGlementTwoModelObj ?? this.rGlementTwoModelObj,
    );
  }
}
