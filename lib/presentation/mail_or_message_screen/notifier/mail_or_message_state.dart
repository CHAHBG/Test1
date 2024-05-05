// ignore_for_file: must_be_immutable

part of 'mail_or_message_notifier.dart';

/// Represents the state of MailOrMessage in the application.
class MailOrMessageState extends Equatable {
  MailOrMessageState({this.mailOrMessageModelObj});

  MailOrMessageModel? mailOrMessageModelObj;

  @override
  List<Object?> get props => [
        mailOrMessageModelObj,
      ];

  MailOrMessageState copyWith({MailOrMessageModel? mailOrMessageModelObj}) {
    return MailOrMessageState(
      mailOrMessageModelObj:
          mailOrMessageModelObj ?? this.mailOrMessageModelObj,
    );
  }
}
