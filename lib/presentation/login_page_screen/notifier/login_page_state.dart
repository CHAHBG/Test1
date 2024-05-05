// ignore_for_file: must_be_immutable

part of 'login_page_notifier.dart';

/// Represents the state of LoginPage in the application.
class LoginPageState extends Equatable {
  LoginPageState({
    this.usernameController,
    this.passwordController,
    this.loginPageModelObj,
  });

  TextEditingController? usernameController;

  TextEditingController? passwordController;

  LoginPageModel? loginPageModelObj;

  @override
  List<Object?> get props => [
        usernameController,
        passwordController,
        loginPageModelObj,
      ];

  LoginPageState copyWith({
    TextEditingController? usernameController,
    TextEditingController? passwordController,
    LoginPageModel? loginPageModelObj,
  }) {
    return LoginPageState(
      usernameController: usernameController ?? this.usernameController,
      passwordController: passwordController ?? this.passwordController,
      loginPageModelObj: loginPageModelObj ?? this.loginPageModelObj,
    );
  }
}
