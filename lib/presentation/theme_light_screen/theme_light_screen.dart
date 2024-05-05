import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_outlined_button.dart';

import '../../widgets/custom_elevated_button.dart';

class ThemeLightScreen extends ConsumerStatefulWidget {
  const ThemeLightScreen({Key? key})
      : super(
    key: key,
  );

  @override
  ThemeLightScreenState createState() => ThemeLightScreenState();
}

class ThemeLightScreenState extends ConsumerState<ThemeLightScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 39.v),
              Text(
                "lbl_apparence".tr,
                style: CustomTextStyles.headlineSmallGabrielaWhiteA70001,
              ),
              Spacer(
                flex: 66,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 140.h,
                  right: 148.h,
                ),
                child: Column(
                  children: [
                    Text(
                      "lbl_mode_clair".tr,
                      style: CustomTextStyles.titleSmallBold,
                    ),
                    SizedBox(height: 1.v),
                    SizedBox(height: 12.v),
                    Container(
                      padding: EdgeInsets.all(4.h),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder36,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Handle light mode press
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: CustomIconButton(
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                              padding: EdgeInsets.all(18.h),
                              decoration: IconButtonStyleHelper.fillPrimaryTL30,
                              child: CustomImageView(
                                imagePath: ImageConstant.lightMode,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              NavigatorService.pushNamed(
                                AppRoutes.themeDarkScreen,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.darkMode,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(
                                top: 18.v,
                                right: 18.h,
                                bottom: 18.v,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 33,
              ),
              _buildBacksheet(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBacksheet(BuildContext context) {
    return SizedBox(
      height: 238.v,
      width: 426.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBg6,
            height: 206.v,
            width: 426.h,
            alignment: Alignment.bottomCenter,
          ),
          CustomElevatedButton(
            text: "lbl_suivant".tr,
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            onPressed: () {
              onTap(context);
            },
            buttonStyle: ElevatedButton.styleFrom(
              primary: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            buttonTextStyle: CustomTextStyles.bodyLargeGabrielaPrimary_1,
            height: 48.v,
            width: 263.h,
          )

          ,
        ],
      ),
    );
  }

  /// Navigates to the verficationCodeScreen when the action is triggered.
  onTap(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getinhStartedScreen,
    );
  }
}
