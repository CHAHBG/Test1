import '../models/sms2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

// ignore: must_be_immutable
class Sms2ItemWidget extends StatelessWidget {
  Sms2ItemWidget(
    this.sms2ItemModelObj, {
    Key? key,
    this.onTapSms2,
  }) : super(
          key: key,
        );

  Sms2ItemModel sms2ItemModelObj;

  VoidCallback? onTapSms2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSms2!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder39,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: sms2ItemModelObj.smsImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 11.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sms2ItemModelObj.smsText!,
                    style: CustomTextStyles.titleLargeGabrielaGray90002,
                  ),
                  Text(
                    sms2ItemModelObj.smsPhoneNumber!,
                    style: CustomTextStyles.bodyMediumPoppinsSecondaryContainer,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
