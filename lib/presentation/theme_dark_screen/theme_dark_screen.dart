import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_outlined_button.dart';

class ThemeDarkScreen extends ConsumerStatefulWidget {
  const ThemeDarkScreen({Key? key}) : super(key: key);

  @override
  ThemeDarkScreenState createState() => ThemeDarkScreenState();
}

class ThemeDarkScreenState extends ConsumerState<ThemeDarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray900,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                child: Column(children: [
                  SizedBox(height: 40.v),
                  Text("lbl_apparence".tr,
                      style: CustomTextStyles.headlineSmallGabrielaWhiteA70001),
                  Spacer(flex: 66),
                  Padding(
                      padding: EdgeInsets.only(left: 140.h, right: 148.h),
                      child: Column(children: [
                        Text("lbl_mode_sombre".tr,
                            style: CustomTextStyles.titleSmallWhiteA700),
                        SizedBox(height: 31.v),
                        Container(
                            padding: EdgeInsets.all(4.h),
                            decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder36),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.lightMode,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 18.h, top: 18.v, bottom: 18.v),
                                      onTap: () {
                                        onTapImgIcon(context);
                                      }),
                                  CustomIconButton(
                                      height: 60.adaptSize,
                                      width: 60.adaptSize,
                                      padding: EdgeInsets.all(18.h),
                                      decoration:
                                          IconButtonStyleHelper.fillBlueGray,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.darkMode))
                                ]))
                      ])),
                  Spacer(flex: 33),
                  _buildBacksheet(context)
                ]))));
  }

  /// Section Widget
  Widget _buildBacksheet(BuildContext context) {
    return SizedBox(
        height: 237.v,
        width: 426.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBg,
              height: 205.v,
              width: 426.h,
              alignment: Alignment.bottomCenter),
          CustomOutlinedButton(
              height: 64.v,
              width: 263.h,
              text: "lbl_continue".tr,
              buttonStyle: CustomButtonStyles.outlinePrimary,
              buttonTextStyle: CustomTextStyles.bodyLargeGabrielaWhiteA70001,
              onPressed: () {
                onTapContinue(context);
              },
              alignment: Alignment.topCenter)
        ]));
  }

  /// Navigates to the themeLightScreen when the action is triggered.
  onTapImgIcon(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.themeLightScreen,
    );
  }

  /// Navigates to the signInDarkOneScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getinhStartedDarkScreen,
    );
  }
}
