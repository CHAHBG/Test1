import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/sign_in_dark_screen/models/sign_in_dark_model.dart';
part 'sign_in_dark_state.dart';

final signInDarkNotifier =
    StateNotifierProvider<SignInDarkNotifier, SignInDarkState>((ref) =>
        SignInDarkNotifier(SignInDarkState(
            nameController: TextEditingController(),
            phoneController: TextEditingController(),
            nationalIdentificationNumberController: TextEditingController(),
            emailController: TextEditingController(),
            passwordController: TextEditingController(),
            signInDarkModelObj: SignInDarkModel())));

/// A notifier that manages the state of a SignInDark according to the event that is dispatched to it.
class SignInDarkNotifier extends StateNotifier<SignInDarkState> {
  SignInDarkNotifier(SignInDarkState state) : super(state);
}
