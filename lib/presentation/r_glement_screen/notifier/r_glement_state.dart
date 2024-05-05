// ignore_for_file: must_be_immutable

part of 'r_glement_notifier.dart';

/// Represents the state of RGlement in the application.
class RGlementState extends Equatable {
  RGlementState({this.rGlementModelObj});

  RGlementModel? rGlementModelObj;

  @override
  List<Object?> get props => [
        rGlementModelObj,
      ];

  RGlementState copyWith({RGlementModel? rGlementModelObj}) {
    return RGlementState(
      rGlementModelObj: rGlementModelObj ?? this.rGlementModelObj,
    );
  }
}
