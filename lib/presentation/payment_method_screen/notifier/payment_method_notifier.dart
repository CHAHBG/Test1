import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import '../models/paymentmethod_item_model.dart';
import 'package:ibrahima_s_application_seter/presentation/payment_method_screen/models/payment_method_model.dart';
part 'payment_method_state.dart';

final paymentMethodNotifier = StateNotifierProvider<PaymentMethodNotifier,
    PaymentMethodState>((ref) => PaymentMethodNotifier(PaymentMethodState(
        paymentMethodModelObj: PaymentMethodModel(paymentmethodItemList: [
      PaymentmethodItemModel(settings: ImageConstant.imgSettingsIndigo900),
      PaymentmethodItemModel(settings: ImageConstant.imgSettingsErrorcontainer),
      PaymentmethodItemModel(settings: ImageConstant.imgSettingsRed500),
      PaymentmethodItemModel(settings: ImageConstant.imgSettingsBlack9000222x41)
    ]))));

/// A notifier that manages the state of a PaymentMethod according to the event that is dispatched to it.
class PaymentMethodNotifier extends StateNotifier<PaymentMethodState> {
  PaymentMethodNotifier(PaymentMethodState state) : super(state);
}
