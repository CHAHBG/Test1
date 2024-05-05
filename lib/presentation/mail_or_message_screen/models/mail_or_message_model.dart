// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sms2_item_model.dart';

/// This class defines the variables used in the [mail_or_message_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MailOrMessageModel extends Equatable {
  MailOrMessageModel({this.sms2ItemList = const []});

  List<Sms2ItemModel> sms2ItemList;

  MailOrMessageModel copyWith({List<Sms2ItemModel>? sms2ItemList}) {
    return MailOrMessageModel(
      sms2ItemList: sms2ItemList ?? this.sms2ItemList,
    );
  }

  @override
  List<Object?> get props => [sms2ItemList];
}
