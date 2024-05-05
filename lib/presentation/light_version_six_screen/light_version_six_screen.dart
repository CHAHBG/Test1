import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_outlined_button.dart';

class LightVersionSixScreen extends ConsumerStatefulWidget {
  const LightVersionSixScreen({Key? key}) : super(key: key);

  @override
  LightVersionSixScreenState createState() => LightVersionSixScreenState();
}

class LightVersionSixScreenState extends ConsumerState<LightVersionSixScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 8.v),
                child: Column(children: [
                  SizedBox(height: 37.v),
                  CustomIconButton(
                      height: 72.adaptSize,
                      width: 72.adaptSize,
                      padding: EdgeInsets.all(15.h),
                      decoration: IconButtonStyleHelper.fillTeal,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmarkTeal600)),
                  SizedBox(height: 14.v),
                  Text("msg_paiement_r_ussi".tr,
                      style: CustomTextStyles.titleLargePoppinsGray90005),
                  SizedBox(height: 7.v),
                  Text("msg_votre_paiement_a".tr,
                      style: CustomTextStyles.bodyMediumPoppinsGray800),
                  SizedBox(height: 44.v),
                  _buildReceipt(context),
                  SizedBox(height: 91.v),
                  CustomOutlinedButton(
                      text: "lbl_imprimer_en_pdf2".tr,
                      margin: EdgeInsets.only(left: 23.h),
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 10.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgDownloadDeepPurple800,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      buttonStyle: CustomButtonStyles.outlineDeepPurple,
                      buttonTextStyle: CustomTextStyles.titleSmallDeeppurple800,
                      alignment: Alignment.centerRight),
                  SizedBox(height: 25.v),
                  CustomElevatedButton(
                      height: 48.v,
                      text: "lbl_ok2".tr,
                      margin: EdgeInsets.only(left: 23.h),
                      buttonStyle: CustomButtonStyles.fillDeepPurpleTL12,
                      buttonTextStyle: theme.textTheme.titleSmall!,
                      onPressed: () {
                        onTapOK(context);
                      },
                      alignment: Alignment.centerRight),
                  Spacer(),
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          width: 238.h,
                          child: Divider(
                              color: appTheme.black90002.withOpacity(0.6),
                              endIndent: 103.h)))
                ]))));
  }

  /// Section Widget
  Widget _buildReceipt(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 7.h, right: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v),
        decoration: AppDecoration.fillGray5002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_montant".tr,
                          style: CustomTextStyles.bodyMediumPoppinsBlack90002),
                      SizedBox(height: 22.v),
                      Text("msg_statut_de_paiement".tr,
                          style: CustomTextStyles.bodyMediumPoppinsBlack90002)
                    ])),
            Column(children: [
              Text("lbl_1_000_000_fcf".tr,
                  style: CustomTextStyles.titleMediumPoppinsGray90005),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                  height: 28.v,
                  width: 57.h,
                  text: "lbl_succ_s".tr,
                  buttonStyle: CustomButtonStyles.fillTeal,
                  buttonTextStyle: theme.textTheme.labelMedium!,
                  alignment: Alignment.centerRight)
            ])
          ]),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 18.v),
          _buildPaymentDetail4(context,
              nomClientText: "lbl_ref_number".tr,
              awaToureText: "lbl_000085752257".tr),
          SizedBox(height: 11.v),
          _buildPaymentDetail4(context,
              nomClientText: "lbl_nom_client".tr,
              awaToureText: "lbl_awa_toure".tr),
          SizedBox(height: 11.v),
          _buildPaymentDetail4(context,
              nomClientText: "msg_mode_de_paiement".tr,
              awaToureText: "lbl_wave_transfer".tr),
          SizedBox(height: 11.v),
          _buildPaymentDetail4(context,
              nomClientText: "msg_date_et_heure_du".tr,
              awaToureText: "msg_mar_22_2023_13_22_16".tr),
          SizedBox(height: 32.v)
        ]));
  }

  /// Common widget
  Widget _buildPaymentDetail4(
    BuildContext context, {
    required String nomClientText,
    required String awaToureText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(nomClientText,
          style: CustomTextStyles.bodyMediumPoppinsBlack90002
              .copyWith(color: appTheme.black90002)),
      Text(awaToureText,
          style: CustomTextStyles.labelLargePoppinsGray90005
              .copyWith(color: appTheme.gray90005))
    ]);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapOK(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
