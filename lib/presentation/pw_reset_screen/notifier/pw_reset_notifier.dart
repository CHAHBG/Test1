import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/pw_reset_screen/models/pw_reset_model.dart';
part 'pw_reset_state.dart';

final pwResetNotifier = StateNotifierProvider<PwResetNotifier, PwResetState>(
  (ref) => PwResetNotifier(PwResetState(
    emailController: TextEditingController(),
    pwResetModelObj: PwResetModel(),
  )),
);

/// A notifier that manages the state of a PwReset according to the event that is dispatched to it.
class PwResetNotifier extends StateNotifier<PwResetState> {
  PwResetNotifier(PwResetState state) : super(state);
}
