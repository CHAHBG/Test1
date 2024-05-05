import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/sign_in_screen/models/sign_in_model.dart';
part 'sign_in_state.dart';

final signInNotifier = StateNotifierProvider<SignInNotifier, SignInState>(
    (ref) => SignInNotifier(SignInState(
        nameController: TextEditingController(),
        phoneController: TextEditingController(),
        nationalIdentificationNumberController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        signInModelObj: SignInModel())));

/// A notifier that manages the state of a SignIn according to the event that is dispatched to it.
class SignInNotifier extends StateNotifier<SignInState> {
  SignInNotifier(SignInState state) : super(state);
}
