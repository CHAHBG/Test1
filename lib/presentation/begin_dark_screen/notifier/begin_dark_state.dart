// ignore_for_file: must_be_immutable

part of 'begin_dark_notifier.dart';

/// Represents the state of BeginDark in the application.
class BeginDarkState extends Equatable {
  BeginDarkState({this.beginDarkModelObj});

  BeginDarkModel? beginDarkModelObj;

  @override
  List<Object?> get props => [
        beginDarkModelObj,
      ];

  BeginDarkState copyWith({BeginDarkModel? beginDarkModelObj}) {
    return BeginDarkState(
      beginDarkModelObj: beginDarkModelObj ?? this.beginDarkModelObj,
    );
  }
}
