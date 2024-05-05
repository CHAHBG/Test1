import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_outlined_button.dart';

class DarkVersionSixScreen extends ConsumerStatefulWidget {
  const DarkVersionSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DarkVersionSixScreenState createState() => DarkVersionSixScreenState();
}

class DarkVersionSixScreenState extends ConsumerState<DarkVersionSixScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 41.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 37.v),
              CustomIconButton(
                height: 72.adaptSize,
                width: 72.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.fillTealE,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                ),
              ),
              SizedBox(height: 14.v),
              Text(
                "msg_paiement_r_ussi".tr,
                style: CustomTextStyles.titleLargePoppinsWhiteA70001,
              ),
              SizedBox(height: 7.v),
              Text(
                "msg_votre_paiement_a".tr,
                style: CustomTextStyles.bodyMediumPoppinsGray800,
              ),
              SizedBox(height: 28.v),
              _buildReceiptColumn(context),
              SizedBox(height: 91.v),
              CustomOutlinedButton(
                text: "lbl_imprimer_en_pdf".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgDownload,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                height: 48.v,
                text: "lbl_ok2".tr,
                buttonStyle: CustomButtonStyles.fillDeepPurple,
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              SizedBox(height: 90.v),
              SizedBox(
                width: 135.h,
                child: Divider(
                  color: appTheme.blueGray200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReceiptColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillBlack90002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_montant".tr,
                      style: CustomTextStyles.bodyMediumPoppinsWhiteA7000113,
                    ),
                    SizedBox(height: 22.v),
                    Text(
                      "msg_statut_de_paiement".tr,
                      style: CustomTextStyles.bodyMediumPoppinsWhiteA7000113,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    "lbl_1_000_000_fcf".tr,
                    style: CustomTextStyles.titleMediumPoppins,
                  ),
                  SizedBox(height: 10.v),
                  CustomElevatedButton(
                    height: 28.v,
                    width: 57.h,
                    text: "lbl_succ_s".tr,
                    buttonStyle: CustomButtonStyles.fillTeal,
                    buttonTextStyle: theme.textTheme.labelMedium!,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 18.v),
          _buildPaymentDetailRow1(
            context,
            clientName: "lbl_ref_number".tr,
            userName: "lbl_000085752257".tr,
          ),
          SizedBox(height: 11.v),
          _buildPaymentDetailRow1(
            context,
            clientName: "lbl_nom_client".tr,
            userName: "lbl_awa_toure".tr,
          ),
          SizedBox(height: 11.v),
          _buildPaymentDetailRow1(
            context,
            clientName: "msg_mode_de_paiement".tr,
            userName: "lbl_wave_transfer".tr,
          ),
          SizedBox(height: 11.v),
          _buildPaymentDetailRow1(
            context,
            clientName: "msg_date_et_heure_du".tr,
            userName: "msg_mar_22_2023_13_22_16".tr,
          ),
          SizedBox(height: 81.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPaymentDetailRow1(
    BuildContext context, {
    required String clientName,
    required String userName,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          clientName,
          style: CustomTextStyles.bodyMediumPoppinsWhiteA7000113.copyWith(
            color: appTheme.whiteA70001,
          ),
        ),
        Text(
          userName,
          style: CustomTextStyles.labelLargePoppins.copyWith(
            color: appTheme.whiteA70001,
          ),
        ),
      ],
    );
  }
}
