// ignore_for_file: must_be_immutable

part of 'sign_in_notifier.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.nameController,
    this.phoneController,
    this.nationalIdentificationNumberController,
    this.emailController,
    this.passwordController,
    this.signInModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneController;

  TextEditingController? nationalIdentificationNumberController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignInModel? signInModelObj;

  @override
  List<Object?> get props => [
        nameController,
        phoneController,
        nationalIdentificationNumberController,
        emailController,
        passwordController,
        signInModelObj,
      ];

  SignInState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneController,
    TextEditingController? nationalIdentificationNumberController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      nameController: nameController ?? this.nameController,
      phoneController: phoneController ?? this.phoneController,
      nationalIdentificationNumberController:
          nationalIdentificationNumberController ??
              this.nationalIdentificationNumberController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
