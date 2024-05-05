// ignore_for_file: must_be_immutable

part of 'login_page_dark_notifier.dart';

/// Represents the state of LoginPageDark in the application.
class LoginPageDarkState extends Equatable {
  LoginPageDarkState({
    this.usernameController,
    this.passwordController,
    this.loginPageDarkModelObj,
  });

  TextEditingController? usernameController;

  TextEditingController? passwordController;

  LoginPageDarkModel? loginPageDarkModelObj;

  @override
  List<Object?> get props => [
        usernameController,
        passwordController,
        loginPageDarkModelObj,
      ];

  LoginPageDarkState copyWith({
    TextEditingController? usernameController,
    TextEditingController? passwordController,
    LoginPageDarkModel? loginPageDarkModelObj,
  }) {
    return LoginPageDarkState(
      usernameController: usernameController ?? this.usernameController,
      passwordController: passwordController ?? this.passwordController,
      loginPageDarkModelObj:
          loginPageDarkModelObj ?? this.loginPageDarkModelObj,
    );
  }
}
