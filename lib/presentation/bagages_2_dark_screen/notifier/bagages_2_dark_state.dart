// ignore_for_file: must_be_immutable

part of 'bagages_2_dark_notifier.dart';

/// Represents the state of Bagages2Dark in the application.
class Bagages2DarkState extends Equatable {
  Bagages2DarkState({this.bagages2DarkModelObj});

  Bagages2DarkModel? bagages2DarkModelObj;

  @override
  List<Object?> get props => [
        bagages2DarkModelObj,
      ];

  Bagages2DarkState copyWith({Bagages2DarkModel? bagages2DarkModelObj}) {
    return Bagages2DarkState(
      bagages2DarkModelObj: bagages2DarkModelObj ?? this.bagages2DarkModelObj,
    );
  }
}
