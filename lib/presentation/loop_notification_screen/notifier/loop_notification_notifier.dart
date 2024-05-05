import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/loop_notification_screen/models/loop_notification_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'loop_notification_state.dart';

final loopNotificationNotifier =
    StateNotifierProvider<LoopNotificationNotifier, LoopNotificationState>(
  (ref) => LoopNotificationNotifier(LoopNotificationState(
    otpController: TextEditingController(),
    loopNotificationModelObj: LoopNotificationModel(),
  )),
);

/// A notifier that manages the state of a LoopNotification according to the event that is dispatched to it.
class LoopNotificationNotifier extends StateNotifier<LoopNotificationState>
    with CodeAutoFill {
  LoopNotificationNotifier(LoopNotificationState state) : super(state);

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
