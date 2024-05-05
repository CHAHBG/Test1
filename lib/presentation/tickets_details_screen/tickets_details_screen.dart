import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicketsDetailsScreen extends ConsumerStatefulWidget {
  const TicketsDetailsScreen({Key? key}) : super(key: key);

  @override
  TicketsDetailsScreenState createState() => TicketsDetailsScreenState();
}

class TicketsDetailsScreenState extends ConsumerState<TicketsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 8.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 17.v,
                      width: 10.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 1.h),
                      onTap: () {
                        onTapImgArrowLeft(context);
                      }),
                  SizedBox(height: 20.v),
                  SizedBox(
                      height: 670.v,
                      width: 372.h,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup13,
                            height: 12.v,
                            width: 46.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 283.v)),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                decoration: AppDecoration.outlineBlack900024
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildOneMillionFiveHundredNinetyTho(
                                          context),
                                      SizedBox(height: 19.v),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 57.h, right: 35.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("lbl_7_30".tr,
                                                        style: theme.textTheme
                                                            .headlineLarge),
                                                    Text("lbl_7_59".tr,
                                                        style: theme.textTheme
                                                            .headlineLarge)
                                                  ]))),
                                      SizedBox(height: 9.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 27.v,
                                              width: 227.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgIcon2,
                                                        height: 7.v,
                                                        width: 186.h,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                            margin: EdgeInsets.only(
                                                                right: 200.h),
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.h),
                                                            decoration: AppDecoration
                                                                .fillPrimary
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder13),
                                                            child: Container(
                                                                height: 11
                                                                    .adaptSize,
                                                                width: 11
                                                                    .adaptSize,
                                                                decoration: BoxDecoration(
                                                                    color: appTheme.whiteA70001,
                                                                    borderRadius: BorderRadius.circular(5.h))))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            margin: EdgeInsets.only(
                                                                left: 200.h),
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.h),
                                                            decoration: AppDecoration
                                                                .fillPrimary
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder13),
                                                            child: Container(
                                                                height: 11
                                                                    .adaptSize,
                                                                width: 11
                                                                    .adaptSize,
                                                                decoration: BoxDecoration(
                                                                    color: appTheme.whiteA70001,
                                                                    borderRadius: BorderRadius.circular(5.h)))))
                                                  ]))),
                                      SizedBox(height: 12.v),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 38.h, right: 58.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_colobane".tr,
                                                    style: CustomTextStyles
                                                        .titleLargeBlack90002_2),
                                                Text("lbl_pnr".tr,
                                                    style: CustomTextStyles
                                                        .titleLargeBlack90002_2)
                                              ])),
                                      SizedBox(height: 41.v),
                                      Container(
                                          height: 54.v,
                                          width: 155.h,
                                          margin: EdgeInsets.only(left: 24.h),
                                          child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Text(
                                                        "lbl_12_janvier_2023"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .titleLargeBlack90002_2)),
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text("lbl_date".tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeBlack90002_5))
                                              ])),
                                      SizedBox(height: 17.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 24.h),
                                          child: Text("lbl_passenger".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack90002_5)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 24.h, right: 35.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("lbl_awa_tour".tr,
                                                        style: CustomTextStyles
                                                            .titleLargeBlack90002_2),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgAntDesignPlusSquareFilled,
                                                        height: 26.adaptSize,
                                                        width: 26.adaptSize)
                                                  ]))),
                                      SizedBox(height: 17.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 22.h),
                                          child: Text("lbl_id".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack90002_5)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 22.h, right: 35.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_159_095_6".tr,
                                                    style: CustomTextStyles
                                                        .titleLargeBlack90002_2),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgClarityNoteEditSolid,
                                                    height: 26.adaptSize,
                                                    width: 26.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        bottom: 3.v))
                                              ])),
                                      SizedBox(height: 22.v),
                                      _buildQRCode(context),
                                      SizedBox(height: 1.v),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 22.h, right: 34.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgAkarIconsDownload,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        bottom: 2.v)),
                                                CustomIconButton(
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(2.h),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGridiconsNoticeOutlinePrimary))
                                              ])),
                                      SizedBox(height: 16.v)
                                    ])))
                      ])),
                  SizedBox(height: 51.v),
                  SizedBox(
                      height: 60.v,
                      width: 250.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("lbl_save".tr,
                                    style: CustomTextStyles
                                        .titleLargeWhiteA70001Bold))),
                        CustomElevatedButton(
                            width: 250.h,
                            text: "lbl_acheter".tr,
                            onPressed: () {
                              onTapAcheter(context);
                            },
                            alignment: Alignment.center)
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildOneMillionFiveHundredNinetyTho(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 136.h, vertical: 13.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("lbl_159_095_6".tr,
                  style: CustomTextStyles.titleLargeWhiteA70001Bold)
            ]));
  }

  /// Section Widget
  Widget _buildQRCode(BuildContext context) {
    return SizedBox(
        height: 167.v,
        width: 372.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 20.v,
                  width: 12.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(10.h))))),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 20.v,
                  width: 12.h,
                  margin: EdgeInsets.only(top: 1.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(10.h)),
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.black90002.withOpacity(0.1),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(-3, 4))
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Text("msg".tr,
                  style: CustomTextStyles.titleSmallOpenSansGray400)),
          Align(
              alignment: Alignment.bottomCenter,
              child: QrImageView(data: 'https://www.google.com', size: 147.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  onTapAcheter(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentMethodScreen,
    );
  }
}
