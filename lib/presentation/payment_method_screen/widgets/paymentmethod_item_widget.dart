import '../models/paymentmethod_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

// ignore: must_be_immutable
class PaymentmethodItemWidget extends StatelessWidget {
  PaymentmethodItemWidget(
    this.paymentmethodItemModelObj, {
    Key? key,
    this.onTapVisa,
  }) : super(
          key: key,
        );

  PaymentmethodItemModel paymentmethodItemModelObj;

  VoidCallback? onTapVisa;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapVisa!.call();
        },
        child: Container(
          height: 67.v,
          width: 102.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 24.v,
          ),
          decoration: AppDecoration.outlineGray4000f.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: CustomImageView(
            imagePath: paymentmethodItemModelObj.settings,
            height: 15.v,
            width: 39.h,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}
