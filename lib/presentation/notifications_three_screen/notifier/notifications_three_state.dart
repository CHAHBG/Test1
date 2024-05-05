// ignore_for_file: must_be_immutable

part of 'notifications_three_notifier.dart';

/// Represents the state of NotificationsThree in the application.
class NotificationsThreeState extends Equatable {
  NotificationsThreeState({this.notificationsThreeModelObj});

  NotificationsThreeModel? notificationsThreeModelObj;

  @override
  List<Object?> get props => [
        notificationsThreeModelObj,
      ];

  NotificationsThreeState copyWith(
      {NotificationsThreeModel? notificationsThreeModelObj}) {
    return NotificationsThreeState(
      notificationsThreeModelObj:
          notificationsThreeModelObj ?? this.notificationsThreeModelObj,
    );
  }
}
