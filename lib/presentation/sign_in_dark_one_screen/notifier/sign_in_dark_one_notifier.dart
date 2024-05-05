import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/sign_in_dark_one_screen/models/sign_in_dark_one_model.dart';
part 'sign_in_dark_one_state.dart';

final signInDarkOneNotifier =
    StateNotifierProvider<SignInDarkOneNotifier, SignInDarkOneState>((ref) =>
        SignInDarkOneNotifier(SignInDarkOneState(
            nameController: TextEditingController(),
            phoneController: TextEditingController(),
            nationalIdentificationNumberController: TextEditingController(),
            emailController: TextEditingController(),
            passwordController: TextEditingController(),
            signInDarkOneModelObj: SignInDarkOneModel())));

/// A notifier that manages the state of a SignInDarkOne according to the event that is dispatched to it.
class SignInDarkOneNotifier extends StateNotifier<SignInDarkOneState> {
  SignInDarkOneNotifier(SignInDarkOneState state) : super(state);
}
