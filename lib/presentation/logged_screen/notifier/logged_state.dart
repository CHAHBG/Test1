// ignore_for_file: must_be_immutable

part of 'logged_notifier.dart';

/// Represents the state of Logged in the application.
class LoggedState extends Equatable {
  LoggedState({this.loggedModelObj});

  LoggedModel? loggedModelObj;

  @override
  List<Object?> get props => [
        loggedModelObj,
      ];

  LoggedState copyWith({LoggedModel? loggedModelObj}) {
    return LoggedState(
      loggedModelObj: loggedModelObj ?? this.loggedModelObj,
    );
  }
}
