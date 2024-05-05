// ignore_for_file: must_be_immutable

part of 'pw_reset_dark_notifier.dart';

/// Represents the state of PwResetDark in the application.
class PwResetDarkState extends Equatable {
  PwResetDarkState({
    this.emailController,
    this.pwResetDarkModelObj,
  });

  TextEditingController? emailController;

  PwResetDarkModel? pwResetDarkModelObj;

  @override
  List<Object?> get props => [
        emailController,
        pwResetDarkModelObj,
      ];

  PwResetDarkState copyWith({
    TextEditingController? emailController,
    PwResetDarkModel? pwResetDarkModelObj,
  }) {
    return PwResetDarkState(
      emailController: emailController ?? this.emailController,
      pwResetDarkModelObj: pwResetDarkModelObj ?? this.pwResetDarkModelObj,
    );
  }
}
