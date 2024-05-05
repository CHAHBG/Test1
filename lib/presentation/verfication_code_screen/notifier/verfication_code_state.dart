// ignore_for_file: must_be_immutable

part of 'verfication_code_notifier.dart';

/// Represents the state of VerficationCode in the application.
class VerficationCodeState extends Equatable {
  VerficationCodeState({
    this.otpController,
    this.verficationCodeModelObj,
  });

  TextEditingController? otpController;

  VerficationCodeModel? verficationCodeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verficationCodeModelObj,
      ];

  VerficationCodeState copyWith({
    TextEditingController? otpController,
    VerficationCodeModel? verficationCodeModelObj,
  }) {
    return VerficationCodeState(
      otpController: otpController ?? this.otpController,
      verficationCodeModelObj:
          verficationCodeModelObj ?? this.verficationCodeModelObj,
    );
  }
}
