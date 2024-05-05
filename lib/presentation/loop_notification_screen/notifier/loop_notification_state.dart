// ignore_for_file: must_be_immutable

part of 'loop_notification_notifier.dart';

/// Represents the state of LoopNotification in the application.
class LoopNotificationState extends Equatable {
  LoopNotificationState({
    this.otpController,
    this.loopNotificationModelObj,
  });

  TextEditingController? otpController;

  LoopNotificationModel? loopNotificationModelObj;

  @override
  List<Object?> get props => [
        otpController,
        loopNotificationModelObj,
      ];

  LoopNotificationState copyWith({
    TextEditingController? otpController,
    LoopNotificationModel? loopNotificationModelObj,
  }) {
    return LoopNotificationState(
      otpController: otpController ?? this.otpController,
      loopNotificationModelObj:
          loopNotificationModelObj ?? this.loopNotificationModelObj,
    );
  }
}
