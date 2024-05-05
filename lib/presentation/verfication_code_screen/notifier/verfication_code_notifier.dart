import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/verfication_code_screen/models/verfication_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verfication_code_state.dart';

final verficationCodeNotifier =
    StateNotifierProvider<VerficationCodeNotifier, VerficationCodeState>(
  (ref) => VerficationCodeNotifier(VerficationCodeState(
    otpController: TextEditingController(),
    verficationCodeModelObj: VerficationCodeModel(),
  )),
);

/// A notifier that manages the state of a VerficationCode according to the event that is dispatched to it.
class VerficationCodeNotifier extends StateNotifier<VerficationCodeState>
    with CodeAutoFill {
  VerficationCodeNotifier(VerficationCodeState state) : super(state);

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
