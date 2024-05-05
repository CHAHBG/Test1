import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_leading_image.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/custom_app_bar.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class StationDetailsDarkScreen extends ConsumerStatefulWidget {
  const StationDetailsDarkScreen({Key? key}) : super(key: key);

  @override
  StationDetailsDarkScreenState createState() =>
      StationDetailsDarkScreenState();
}

class StationDetailsDarkScreenState
    extends ConsumerState<StationDetailsDarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            body: SizedBox(
                width: 426.h,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 1168.v,
                        width: 426.h,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 147.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 27.h, vertical: 36.v),
                                  decoration: AppDecoration.outlineBlack900022
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("msg_gare_ferrovi_re".tr,
                                            style: CustomTextStyles
                                                .titleLargeWhiteA70001_1),
                                        SizedBox(height: 24.v),
                                        Container(
                                            width: 366.h,
                                            margin: EdgeInsets.only(right: 5.h),
                                            child: Text(
                                                "msg_la_gare_de_dakar".tr,
                                                maxLines: 7,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodyLargeWhiteA70001_4
                                                    .copyWith(height: 1.28))),
                                        SizedBox(height: 33.v),
                                        Row(children: [
                                          Text("lbl_adresse".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("lbl_dakar".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeWhiteA70001_8))
                                        ]),
                                        SizedBox(height: 5.v),
                                        SizedBox(
                                            height: 25.v,
                                            width: 213.h,
                                            child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                          "lbl_heures".tr,
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_ouvert"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .bodyLargeff00a400),
                                                                TextSpan(
                                                                    text: " "),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_24_heures"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .bodyLarge99ffffff)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])),
                                        SizedBox(height: 5.v),
                                        Row(children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 1.v),
                                              child: Text("lbl_t_l_phone".tr,
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text(
                                                  "msg_221_33_123_45_67".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeBlue600))
                                        ]),
                                        SizedBox(height: 7.v),
                                        Row(children: [
                                          Text("lbl_email2".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtWeburl(context);
                                              },
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20.h),
                                                  child: Text(
                                                      "lbl_www_terdakar_sn".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeWhiteA70001_8)))
                                        ]),
                                        SizedBox(height: 7.v)
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgGare1,
                              height: 360.v,
                              width: 426.h,
                              alignment: Alignment.topCenter),
                          CustomElevatedButton(
                              height: 84.v,
                              width: 283.h,
                              text: "msg_voir_le_plan_de".tr,
                              margin: EdgeInsets.only(bottom: 95.v),
                              buttonTextStyle:
                                  CustomTextStyles.headlineSmallWhiteA70001_1,
                              alignment: Alignment.bottomCenter),
                          _buildArrowLeft(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 28.h, top: 19.v, right: 28.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomAppBar(
                  height: 13.v,
                  leadingWidth: 425.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowLeft,
                      margin: EdgeInsets.only(left: 27.h, right: 388.h),
                      onTap: () {
                        onTapArrowLeft(context);
                      })),
              SizedBox(height: 262.v),
              CustomImageView(
                  imagePath: ImageConstant.imgUserPrimary,
                  height: 14.v,
                  width: 19.h,
                  alignment: Alignment.centerRight)
            ])));
  }

  onTapTxtWeburl(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
