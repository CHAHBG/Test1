// ignore_for_file: must_be_immutable

part of 'sign_in_dark_notifier.dart';

/// Represents the state of SignInDark in the application.
class SignInDarkState extends Equatable {
  SignInDarkState({
    this.nameController,
    this.phoneController,
    this.nationalIdentificationNumberController,
    this.emailController,
    this.passwordController,
    this.signInDarkModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneController;

  TextEditingController? nationalIdentificationNumberController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignInDarkModel? signInDarkModelObj;

  @override
  List<Object?> get props => [
        nameController,
        phoneController,
        nationalIdentificationNumberController,
        emailController,
        passwordController,
        signInDarkModelObj,
      ];

  SignInDarkState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneController,
    TextEditingController? nationalIdentificationNumberController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    SignInDarkModel? signInDarkModelObj,
  }) {
    return SignInDarkState(
      nameController: nameController ?? this.nameController,
      phoneController: phoneController ?? this.phoneController,
      nationalIdentificationNumberController:
          nationalIdentificationNumberController ??
              this.nationalIdentificationNumberController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      signInDarkModelObj: signInDarkModelObj ?? this.signInDarkModelObj,
    );
  }
}
