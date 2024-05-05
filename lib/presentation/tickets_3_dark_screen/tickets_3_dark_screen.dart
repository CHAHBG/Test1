import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Tickets3DarkScreen extends ConsumerStatefulWidget {
  const Tickets3DarkScreen({Key? key}) : super(key: key);

  @override
  Tickets3DarkScreenState createState() => Tickets3DarkScreenState();
}

class Tickets3DarkScreenState extends ConsumerState<Tickets3DarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 8.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 17.v,
                          width: 10.h,
                          margin: EdgeInsets.only(left: 1.h),
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                          text: "lbl_159_095_6".tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL10),
                      SizedBox(height: 19.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(left: 57.h, right: 35.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_7_30".tr,
                                        style: CustomTextStyles
                                            .headlineLargeWhiteA70001),
                                    Text("lbl_7_59".tr,
                                        style: CustomTextStyles
                                            .headlineLargeWhiteA70001)
                                  ]))),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 27.v,
                              width: 227.h,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 7.v,
                                            width: 186.h,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    begin: Alignment(0.5, 0),
                                                    end: Alignment(0.5, 1),
                                                    colors: [
                                                  theme.colorScheme.primary,
                                                  theme.colorScheme.primary,
                                                  theme.colorScheme.primary
                                                ])))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            margin:
                                                EdgeInsets.only(right: 200.h),
                                            padding: EdgeInsets.all(8.h),
                                            decoration: AppDecoration
                                                .fillPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder13),
                                            child: Container(
                                                height: 11.adaptSize,
                                                width: 11.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: appTheme.black90001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.h))))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            margin:
                                                EdgeInsets.only(left: 200.h),
                                            padding: EdgeInsets.all(8.h),
                                            decoration: AppDecoration
                                                .fillPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder13),
                                            child: Container(
                                                height: 11.adaptSize,
                                                width: 11.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: appTheme.black90001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.h)))))
                                  ]))),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h, right: 67.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_colobane".tr,
                                    style: CustomTextStyles
                                        .titleLargeWhiteA70001_2),
                                Text("lbl_pnr".tr,
                                    style: CustomTextStyles
                                        .titleLargeWhiteA70001_2)
                              ])),
                      SizedBox(height: 41.v),
                      Container(
                          height: 54.v,
                          width: 155.h,
                          margin: EdgeInsets.only(left: 24.h),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("lbl_12_janvier_2024".tr,
                                    style: CustomTextStyles
                                        .titleLargeWhiteA70001_2)),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("lbl_date".tr,
                                    style: CustomTextStyles
                                        .bodyLargeWhiteA70001_8))
                          ])),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 24.h, right: 35.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        height: 50.v,
                                        width: 110.h,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text("lbl_awa_tour".tr,
                                                      style: CustomTextStyles
                                                          .titleLargeWhiteA70001_2)),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                      "lbl_passenger".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeWhiteA70001_8))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(top: 23.v),
                                        child: CustomIconButton(
                                            height: 26.adaptSize,
                                            width: 26.adaptSize,
                                            padding: EdgeInsets.all(3.h),
                                            decoration: IconButtonStyleHelper
                                                .fillPrimary,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgBiPlusSquare)))
                                  ]))),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 8.v),
                                    child: Text("lbl_id".tr,
                                        style: CustomTextStyles
                                            .bodyLargeWhiteA70001_8)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgSettings,
                                    height: 12.v,
                                    width: 46.h,
                                    margin: EdgeInsets.only(
                                        left: 120.h, bottom: 20.v))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(left: 22.h, right: 35.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_159_095_6".tr,
                                    style: CustomTextStyles
                                        .titleLargeWhiteA70001_2),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgClarityNoteEditSolid,
                                    height: 26.adaptSize,
                                    width: 26.adaptSize,
                                    margin: EdgeInsets.only(bottom: 3.v))
                              ])),
                      SizedBox(height: 22.v),
                      _buildView(context),
                      Padding(
                          padding: EdgeInsets.only(left: 22.h, right: 34.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgAkarIconsDownload,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(top: 147.v)),
                                Spacer(flex: 54),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 26.v),
                                    child: QrImageView(
                                        data: 'https://www.google.com',
                                        size: 147.v)),
                                Spacer(flex: 45),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgGridiconsNoticeOutline,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(top: 147.v))
                              ])),
                      SizedBox(height: 67.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 60.v,
                              width: 250.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text("lbl_save".tr,
                                            style: CustomTextStyles
                                                .titleLargeBlack90001))),
                                CustomElevatedButton(
                                    width: 250.h,
                                    text: "msg_acheter_un_ticket".tr,
                                    onPressed: () {
                                      onTapAcheterUnTicket(context);
                                    },
                                    alignment: Alignment.center)
                              ]))),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
        height: 21.v,
        width: 372.h,
        child: Stack(alignment: Alignment.centerRight, children: [
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
              alignment: Alignment.centerRight,
              child: Container(
                  height: 20.v,
                  width: 12.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(10.h)),
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.black90002.withOpacity(0.1),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(-3, 4))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Text("msg".tr,
                  style: CustomTextStyles.titleSmallOpenSansGray400))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the paymentMethodOneScreen when the action is triggered.
  onTapAcheterUnTicket(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentMethodOneScreen,
    );
  }
}
