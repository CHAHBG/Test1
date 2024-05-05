// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'paymentmethod_item_model.dart';

/// This class defines the variables used in the [payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentMethodModel extends Equatable {
  PaymentMethodModel({this.paymentmethodItemList = const []});

  List<PaymentmethodItemModel> paymentmethodItemList;

  PaymentMethodModel copyWith(
      {List<PaymentmethodItemModel>? paymentmethodItemList}) {
    return PaymentMethodModel(
      paymentmethodItemList:
          paymentmethodItemList ?? this.paymentmethodItemList,
    );
  }

  @override
  List<Object?> get props => [paymentmethodItemList];
}
