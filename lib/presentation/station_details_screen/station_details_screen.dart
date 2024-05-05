import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_leading_image.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/custom_app_bar.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class StationDetailsScreen extends ConsumerStatefulWidget {
  const StationDetailsScreen({Key? key}) : super(key: key);

  @override
  StationDetailsScreenState createState() => StationDetailsScreenState();
}

class StationDetailsScreenState extends ConsumerState<StationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 426.h,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      SizedBox(
                          height: 932.v,
                          width: 426.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            _buildGareFerroviereDeDakar(context),
                            CustomImageView(
                                imagePath: ImageConstant.imgGare1,
                                height: 360.v,
                                width: 426.h,
                                alignment: Alignment.topCenter),
                            _buildArrowLeft(context)
                          ])),
                      SizedBox(height: 71.v),
                      CustomElevatedButton(
                          height: 84.v,
                          width: 283.h,
                          text: "msg_voir_le_plan_de2".tr,
                          margin: EdgeInsets.only(left: 61.h),
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallWhiteA70001_1),
                      SizedBox(height: 81.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildGareFerroviereDeDakar(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 36.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup23),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("msg_gare_ferrovi_re".tr,
                      style: CustomTextStyles.titleLargeBlack90002_1),
                  SizedBox(height: 24.v),
                  Container(
                      width: 366.h,
                      margin: EdgeInsets.only(right: 5.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_la_gare_de_dakar2".tr,
                                style: theme.textTheme.bodyLarge),
                            TextSpan(
                                text: "msg_gare_ferroviaire".tr,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text: "lbl_situ_e".tr,
                                style: theme.textTheme.bodyLarge),
                            TextSpan(
                                text: "lbl_dakar".tr,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text: "lbl_au".tr,
                                style: theme.textTheme.bodyLarge),
                            TextSpan(
                                text: "lbl_s_n_gal".tr,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text: "msg_sur_la_place_de".tr,
                                style: theme.textTheme.bodyLarge),
                            TextSpan(
                                text: "msg_place_du_tirailleur".tr,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text: "msg_le_23_ao_t_2004_la".tr,
                                style: theme.textTheme.bodyLarge),
                            TextSpan(
                                text: "msg_gare_ferroviaire".tr,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text: "lbl_situ_e".tr,
                                style: theme.textTheme.bodyLarge),
                            TextSpan(
                                text: "lbl_dakar".tr,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text: "lbl_au".tr,
                                style: theme.textTheme.bodyLarge),
                            TextSpan(
                                text: "lbl_s_n_gal".tr,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text: "msg_sur_la_place_de".tr,
                                style: theme.textTheme.bodyLarge),
                            TextSpan(
                                text: "msg_place_du_tirailleur2".tr,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline))
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 112.v),
                  Row(children: [
                    Text("lbl_adresse2".tr,
                        style: CustomTextStyles.titleMediumBlack90002),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text("lbl_dakar".tr,
                            style: CustomTextStyles.bodyLargeBlack90002_5))
                  ]),
                  SizedBox(height: 6.v),
                  Row(children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text("lbl_heures".tr,
                            style: CustomTextStyles.titleMediumBlack90002)),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("msg_ouvert_24_heures2".tr,
                            style: CustomTextStyles.bodyLargeBlack90002_5))
                  ]),
                  SizedBox(height: 4.v),
                  Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("lbl_t_l_phone".tr,
                            style: CustomTextStyles.titleMediumBlack90002)),
                    Text("msg_221_33_123_45_67".tr,
                        style: CustomTextStyles.bodyLargeBlue600)
                  ]),
                  SizedBox(height: 1.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtEmailwwwterdakarsn(context);
                      },
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_email3".tr,
                                style: CustomTextStyles.titleMediumff000000),
                            TextSpan(
                                text: "lbl_www_terdakar_sn".tr,
                                style: CustomTextStyles.bodyLarge8c000000)
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 64.v)
                ])));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 29.h, top: 11.v, right: 29.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomAppBar(
                  height: 13.v,
                  leadingWidth: 425.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowLeft,
                      margin: EdgeInsets.only(left: 30.h, right: 385.h),
                      onTap: () {
                        onTapArrowLeft(context);
                      })),
              SizedBox(height: 270.v),
              CustomImageView(
                  imagePath: ImageConstant.imgUserPrimary,
                  height: 14.v,
                  width: 19.h,
                  alignment: Alignment.centerRight)
            ])));
  }

  onTapTxtEmailwwwterdakarsn(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
