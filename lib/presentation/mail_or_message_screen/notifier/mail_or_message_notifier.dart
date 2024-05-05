import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import '../models/sms2_item_model.dart';
import 'package:ibrahima_s_application_seter/presentation/mail_or_message_screen/models/mail_or_message_model.dart';
part 'mail_or_message_state.dart';

final mailOrMessageNotifier =
    StateNotifierProvider<MailOrMessageNotifier, MailOrMessageState>(
        (ref) => MailOrMessageNotifier(MailOrMessageState(
                mailOrMessageModelObj: MailOrMessageModel(sms2ItemList: [
              Sms2ItemModel(
                  smsImage: ImageConstant.imgIcons4,
                  smsText: "SMS",
                  smsPhoneNumber: "+221 77 123 45 67")
            ]))));

/// A notifier that manages the state of a MailOrMessage according to the event that is dispatched to it.
class MailOrMessageNotifier extends StateNotifier<MailOrMessageState> {
  MailOrMessageNotifier(MailOrMessageState state) : super(state);
}
