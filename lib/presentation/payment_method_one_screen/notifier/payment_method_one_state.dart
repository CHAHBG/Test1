// ignore_for_file: must_be_immutable

part of 'payment_method_one_notifier.dart';

/// Represents the state of PaymentMethodOne in the application.
class PaymentMethodOneState extends Equatable {
  PaymentMethodOneState({this.paymentMethodOneModelObj});

  PaymentMethodOneModel? paymentMethodOneModelObj;

  @override
  List<Object?> get props => [
        paymentMethodOneModelObj,
      ];

  PaymentMethodOneState copyWith(
      {PaymentMethodOneModel? paymentMethodOneModelObj}) {
    return PaymentMethodOneState(
      paymentMethodOneModelObj:
          paymentMethodOneModelObj ?? this.paymentMethodOneModelObj,
    );
  }
}
