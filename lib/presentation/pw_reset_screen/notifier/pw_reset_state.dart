// ignore_for_file: must_be_immutable

part of 'pw_reset_notifier.dart';

/// Represents the state of PwReset in the application.
class PwResetState extends Equatable {
  PwResetState({
    this.emailController,
    this.pwResetModelObj,
  });

  TextEditingController? emailController;

  PwResetModel? pwResetModelObj;

  @override
  List<Object?> get props => [
        emailController,
        pwResetModelObj,
      ];

  PwResetState copyWith({
    TextEditingController? emailController,
    PwResetModel? pwResetModelObj,
  }) {
    return PwResetState(
      emailController: emailController ?? this.emailController,
      pwResetModelObj: pwResetModelObj ?? this.pwResetModelObj,
    );
  }
}
