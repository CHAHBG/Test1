import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_application_seter/presentation/payment_method_one_screen/models/payment_method_one_model.dart';
part 'payment_method_one_state.dart';

final paymentMethodOneNotifier =
    StateNotifierProvider<PaymentMethodOneNotifier, PaymentMethodOneState>(
        (ref) => PaymentMethodOneNotifier(PaymentMethodOneState(
            paymentMethodOneModelObj: PaymentMethodOneModel())));

/// A notifier that manages the state of a PaymentMethodOne according to the event that is dispatched to it.
class PaymentMethodOneNotifier extends StateNotifier<PaymentMethodOneState> {
  PaymentMethodOneNotifier(PaymentMethodOneState state) : super(state);
}
