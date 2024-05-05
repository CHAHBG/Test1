import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class PaymentMethodOneScreen extends ConsumerStatefulWidget {
  const PaymentMethodOneScreen({Key? key}) : super(key: key);

  @override
  PaymentMethodOneScreenState createState() => PaymentMethodOneScreenState();
}

class PaymentMethodOneScreenState
    extends ConsumerState<PaymentMethodOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.v),
                child: Column(children: [
                  SizedBox(height: 25.v),
                  _buildHeader(context),
                  SizedBox(height: 32.v),
                  _buildBankSection(context),
                  SizedBox(height: 42.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 39.h),
                          child: Text("msg_portefeuille_mobile".tr,
                              style: CustomTextStyles
                                  .titleLargePoppinsWhiteA70001))),
                  SizedBox(height: 53.v),
                  _buildPaymentMethodSection(context),
                  Spacer(),
                  SizedBox(
                      width: 135.h, child: Divider(color: appTheme.blueGray200))
                ]))));
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 17.v,
                  width: 10.h,
                  margin: EdgeInsets.only(top: 2.v, bottom: 8.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text("msg_choisissez_votre".tr,
                      style: CustomTextStyles.titleLargeBold))
            ]));
  }

  /// Section Widget
  Widget _buildBankSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 21.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Padding(
                padding: EdgeInsets.only(right: 6.h),
                child: Text("lbl_banque".tr,
                    style: CustomTextStyles.titleLargePoppinsWhiteA70001)),
            SizedBox(height: 56.v),
            GestureDetector(
                onTap: () {
                  onTapVisa(context);
                },
                child: Container(
                    height: 67.v,
                    width: 102.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.h, vertical: 24.v),
                    decoration: AppDecoration.outlineGrayF.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsIndigo900,
                        height: 15.v,
                        width: 39.h,
                        alignment: Alignment.topCenter))),
            SizedBox(height: 32.v),
            GestureDetector(
                onTap: () {
                  onTapGplay(context);
                },
                child: Container(
                    height: 67.v,
                    width: 102.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 26.h, vertical: 18.v),
                    decoration: AppDecoration.outlineOnErrorContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsRed500,
                        height: 23.v,
                        width: 46.h,
                        alignment: Alignment.bottomCenter)))
          ]),
          Padding(
              padding: EdgeInsets.only(top: 86.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 228.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 67.v,
                                  width: 102.h,
                                  decoration: AppDecoration.outlineBlack,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapBox(context);
                                                },
                                                child: Container(
                                                    padding:
                                                        EdgeInsets.all(3.h),
                                                    decoration: AppDecoration
                                                        .outlineBlack90002
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          SizedBox(
                                                              height: 50.v),
                                                          Container(
                                                              height: 7.v,
                                                              width: 6.h,
                                                              decoration: AppDecoration
                                                                  .fillWhiteA
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder3),
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgCheckmarkIndigo900,
                                                                  height: 7.v,
                                                                  width: 6.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center))
                                                        ])))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgUserYellow800,
                                            height: 23.v,
                                            width: 31.h,
                                            alignment: Alignment.center)
                                      ])),
                              GestureDetector(
                                  onTap: () {
                                    onTapPaypal(context);
                                  },
                                  child: Container(
                                      height: 67.v,
                                      width: 102.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 22.h, vertical: 24.v),
                                      decoration: AppDecoration.outlineGrayF
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsErrorcontainer,
                                          height: 15.v,
                                          width: 53.h,
                                          alignment: Alignment.center)))
                            ])),
                    SizedBox(height: 32.v),
                    GestureDetector(
                        onTap: () {
                          onTapApplePay(context);
                        },
                        child: Container(
                            height: 67.v,
                            width: 102.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 23.h, vertical: 21.v),
                            decoration: AppDecoration.outlineGrayF.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgSettingsWhiteA70001,
                                height: 22.v,
                                width: 41.h,
                                alignment: Alignment.centerRight)))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildPaymentMethodSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 21.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                    width: 229.h,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle3,
                              height: 67.v,
                              width: 102.h,
                              radius: BorderRadius.circular(8.h),
                              onTap: () {
                                onTapImgImage(context);
                              }),
                          Container(
                              height: 67.v,
                              width: 102.h,
                              decoration: AppDecoration.outlineBlack,
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle367x102,
                                        height: 67.v,
                                        width: 102.h,
                                        radius: BorderRadius.circular(8.h),
                                        alignment: Alignment.center,
                                        onTap: () {
                                          onTapImgImage1(context);
                                        }),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            height: 7.v,
                                            width: 6.h,
                                            margin: EdgeInsets.only(
                                                top: 4.v, right: 4.h),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder3),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCheckmarkIndigo900,
                                                height: 7.v,
                                                width: 6.h,
                                                alignment: Alignment.center)))
                                  ]))
                        ])),
                SizedBox(height: 32.v),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle31,
                    height: 67.v,
                    width: 102.h,
                    radius: BorderRadius.circular(8.h),
                    onTap: () {
                      onTapImgImage2(context);
                    })
              ]),
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle32,
                  height: 67.v,
                  width: 102.h,
                  radius: BorderRadius.circular(8.h),
                  margin: EdgeInsets.only(left: 24.h, bottom: 99.v),
                  onTap: () {
                    onTapImgImage3(context);
                  })
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the darkVersionSixScreen when the action is triggered.
  onTapVisa(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.darkVersionSixScreen,
    );
  }

  /// Navigates to the darkVersionSixScreen when the action is triggered.
  onTapGplay(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.darkVersionSixScreen,
    );
  }

  /// Navigates to the darkVersionSixScreen when the action is triggered.
  onTapBox(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.darkVersionSixScreen,
    );
  }

  /// Navigates to the darkVersionSixScreen when the action is triggered.
  onTapPaypal(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.darkVersionSixScreen,
    );
  }

  /// Navigates to the darkVersionSixScreen when the action is triggered.
  onTapApplePay(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.darkVersionSixScreen,
    );
  }

  /// Navigates to the darkVersionSixScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.darkVersionSixScreen,
    );
  }

  /// Navigates to the darkVersionSixScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.darkVersionSixScreen,
    );
  }

  /// Navigates to the darkVersionSixScreen when the action is triggered.
  onTapImgImage2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.darkVersionSixScreen,
    );
  }

  /// Navigates to the darkVersionSixScreen when the action is triggered.
  onTapImgImage3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.darkVersionSixScreen,
    );
  }
}
