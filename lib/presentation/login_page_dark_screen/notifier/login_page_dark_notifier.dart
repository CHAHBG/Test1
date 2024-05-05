import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/login_page_dark_screen/models/login_page_dark_model.dart';
part 'login_page_dark_state.dart';

final loginPageDarkNotifier =
    StateNotifierProvider<LoginPageDarkNotifier, LoginPageDarkState>((ref) =>
        LoginPageDarkNotifier(LoginPageDarkState(
            usernameController: TextEditingController(),
            passwordController: TextEditingController(),
            loginPageDarkModelObj: LoginPageDarkModel())));

/// A notifier that manages the state of a LoginPageDark according to the event that is dispatched to it.
class LoginPageDarkNotifier extends StateNotifier<LoginPageDarkState> {
  LoginPageDarkNotifier(LoginPageDarkState state) : super(state);
}
