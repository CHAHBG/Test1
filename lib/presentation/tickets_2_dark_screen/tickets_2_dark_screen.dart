import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';

class Tickets2DarkScreen extends ConsumerStatefulWidget {
  const Tickets2DarkScreen({Key? key}) : super(key: key);

  @override
  Tickets2DarkScreenState createState() => Tickets2DarkScreenState();
}

class Tickets2DarkScreenState extends ConsumerState<Tickets2DarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            body: SizedBox(
                height: 882.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle46,
                      height: 516.v,
                      width: 427.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 27.h, vertical: 37.v),
                          decoration: AppDecoration.outlineBlack900022.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowLeft,
                                              height: 17.v,
                                              width: 10.h,
                                              margin: EdgeInsets.only(
                                                  top: 5.v, bottom: 35.v),
                                              onTap: () {
                                                onTapImgArrowLeft(context);
                                              }),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 9.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_kts_mda_1122".tr,
                                                        style: CustomTextStyles
                                                            .titleLargeWhiteA70001_2),
                                                    SizedBox(height: 3.v),
                                                    Text("lbl_dakar_aibd".tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeWhiteA70001_8)
                                                  ]))
                                        ]))),
                            SizedBox(height: 51.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 22.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_7_30".tr,
                                          style: CustomTextStyles
                                              .titleLargeWhiteA70001Bold_1),
                                      Text("lbl_7_59".tr,
                                          style: CustomTextStyles
                                              .titleLargeWhiteA70001Bold_1)
                                    ])),
                            SizedBox(height: 4.v),
                            SizedBox(
                                height: 32.v,
                                width: 301.h,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLinkedin,
                                          height: 30.v,
                                          width: 23.h,
                                          alignment: Alignment.bottomLeft),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 6.v),
                                              child: Container(
                                                  height: 7.v,
                                                  width: 268.h,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.gray400),
                                                  child: ClipRRect(
                                                      child: LinearProgressIndicator(
                                                          value: 0.14,
                                                          backgroundColor:
                                                              appTheme.gray400,
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                      Color>(
                                                                  theme
                                                                      .colorScheme
                                                                      .primary)))))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 26.h, top: 2.v),
                                          child: CustomIconButton(
                                              height: 27.adaptSize,
                                              width: 27.adaptSize,
                                              padding: EdgeInsets.all(2.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillPrimaryTL13,
                                              alignment: Alignment.topLeft,
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCar))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgLinkedinPrimary,
                                          height: 30.v,
                                          width: 23.h,
                                          alignment: Alignment.topRight)
                                    ])),
                            SizedBox(height: 23.v),
                            _buildColobaneRow(context),
                            SizedBox(height: 34.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(top: 2.v),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 22.h, vertical: 10.v),
                                      decoration: AppDecoration
                                          .outlineBlack900026
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 12.h),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_15".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumffffffff),
                                                      TextSpan(
                                                          text: "lbl_re".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumffffffff)
                                                    ]),
                                                    textAlign: TextAlign.left)),
                                            Text("lbl_classe".tr,
                                                style: theme
                                                    .textTheme.titleMedium),
                                            SizedBox(height: 9.v),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIconParkSolidBabyCarSeat,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 12.h)),
                                            SizedBox(height: 24.v)
                                          ])),
                                  Container(
                                      margin: EdgeInsets.only(left: 57.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.h, vertical: 10.v),
                                      decoration: AppDecoration
                                          .outlineBlack900026
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    right: 17.h),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_22".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumffffffff),
                                                      TextSpan(
                                                          text: "lbl_nd".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumffffffff)
                                                    ]),
                                                    textAlign: TextAlign.left)),
                                            Text("lbl_classe".tr,
                                                style: theme
                                                    .textTheme.titleMedium),
                                            SizedBox(height: 11.v),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUserWhiteA70001,
                                                height: 24.v,
                                                width: 20.h,
                                                alignment: Alignment.center),
                                            SizedBox(height: 22.v)
                                          ]))
                                ]),
                            SizedBox(height: 59.v),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 101.h),
                                decoration: AppDecoration.fillGray90003
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                          height: 50.v,
                                          width: 40.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12.h, vertical: 23.v),
                                          decoration: AppDecoration.fillPrimary
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderLR10),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorWhiteA700012x16,
                                              height: 2.v,
                                              width: 16.h,
                                              alignment:
                                                  Alignment.bottomCenter)),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 11.v, bottom: 8.v),
                                          child: Text("lbl_16".tr,
                                              style: CustomTextStyles
                                                  .titleLargeWhiteA70001Regular)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgTelevisionWhiteA70001,
                                          height: 22.adaptSize,
                                          width: 22.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 8.h,
                                              top: 14.v,
                                              bottom: 13.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 21.h),
                                          child: CustomIconButton(
                                              height: 50.v,
                                              width: 38.h,
                                              padding: EdgeInsets.all(11.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillPrimaryLR10,
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgClose)))
                                    ])),
                            SizedBox(height: 45.v),
                            Text("lbl_1000_fcfa".tr,
                                style: CustomTextStyles
                                    .headlineSmallWhiteA70001_2),
                            SizedBox(height: 58.v),
                            CustomElevatedButton(
                                width: 250.h, text: "msg_acheter_un_ticket".tr),
                            SizedBox(height: 31.v)
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildColobaneRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 22.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_colobane".tr,
                      style: CustomTextStyles.titleLargeWhiteA70001Regular_1),
                  Text("lbl_pnr".tr,
                      style: CustomTextStyles.titleLargeWhiteA70001Regular_1)
                ])));
  }

  /// Navigates to the trainsDarkScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trainsDarkScreen,
    );
  }
}
