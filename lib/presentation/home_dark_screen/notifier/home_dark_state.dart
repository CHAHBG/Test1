// ignore_for_file: must_be_immutable

part of 'home_dark_notifier.dart';

/// Represents the state of HomeDark in the application.
class HomeDarkState extends Equatable {
  HomeDarkState({this.homeDarkModelObj});

  HomeDarkModel? homeDarkModelObj;

  @override
  List<Object?> get props => [
        homeDarkModelObj,
      ];

  HomeDarkState copyWith({HomeDarkModel? homeDarkModelObj}) {
    return HomeDarkState(
      homeDarkModelObj: homeDarkModelObj ?? this.homeDarkModelObj,
    );
  }
}
