import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/pw_reset_dark_screen/models/pw_reset_dark_model.dart';
part 'pw_reset_dark_state.dart';

final pwResetDarkNotifier =
    StateNotifierProvider<PwResetDarkNotifier, PwResetDarkState>(
  (ref) => PwResetDarkNotifier(PwResetDarkState(
    emailController: TextEditingController(),
    pwResetDarkModelObj: PwResetDarkModel(),
  )),
);

/// A notifier that manages the state of a PwResetDark according to the event that is dispatched to it.
class PwResetDarkNotifier extends StateNotifier<PwResetDarkState> {
  PwResetDarkNotifier(PwResetDarkState state) : super(state);
}
