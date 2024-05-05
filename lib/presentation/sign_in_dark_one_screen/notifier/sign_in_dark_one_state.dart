// ignore_for_file: must_be_immutable

part of 'sign_in_dark_one_notifier.dart';

/// Represents the state of SignInDarkOne in the application.
class SignInDarkOneState extends Equatable {
  SignInDarkOneState({
    this.nameController,
    this.phoneController,
    this.nationalIdentificationNumberController,
    this.emailController,
    this.passwordController,
    this.signInDarkOneModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneController;

  TextEditingController? nationalIdentificationNumberController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignInDarkOneModel? signInDarkOneModelObj;

  @override
  List<Object?> get props => [
        nameController,
        phoneController,
        nationalIdentificationNumberController,
        emailController,
        passwordController,
        signInDarkOneModelObj,
      ];

  SignInDarkOneState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneController,
    TextEditingController? nationalIdentificationNumberController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    SignInDarkOneModel? signInDarkOneModelObj,
  }) {
    return SignInDarkOneState(
      nameController: nameController ?? this.nameController,
      phoneController: phoneController ?? this.phoneController,
      nationalIdentificationNumberController:
          nationalIdentificationNumberController ??
              this.nationalIdentificationNumberController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      signInDarkOneModelObj:
          signInDarkOneModelObj ?? this.signInDarkOneModelObj,
    );
  }
}
