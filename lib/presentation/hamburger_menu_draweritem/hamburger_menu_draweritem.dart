import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HamburgerMenuDraweritem extends ConsumerStatefulWidget {
  const HamburgerMenuDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  HamburgerMenuDraweritemState createState() => HamburgerMenuDraweritemState();
}

class HamburgerMenuDraweritemState
    extends ConsumerState<HamburgerMenuDraweritem> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 375.h,
        decoration: AppDecoration.outlineBlack900025,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLockRow(context),
            SizedBox(height: 58.v),
            Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpPrimary,
                    height: 24.v,
                    width: 27.h,
                    margin: EdgeInsets.only(bottom: 6.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_recharger_carte2".tr,
                      style: CustomTextStyles.titleLargeBlack90002Regular,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.v),
            Padding(
              padding: EdgeInsets.only(left: 29.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFaSolidUserFriends,
                    height: 25.v,
                    width: 32.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Text(
                      "lbl_inviter_un_amis".tr,
                      style: CustomTextStyles.titleLargeBlack90002Regular,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 29.v),
            Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClarityHelpInfoSolid,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      "lbl_aide_et_support2".tr,
                      style: CustomTextStyles.titleLargeBlack90002Regular,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 29.v),
            Padding(
              padding: EdgeInsets.only(left: 29.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAntDesignAlertFilled,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_urgences".tr,
                      style: CustomTextStyles.titleLargeBlack90002Regular,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 26.v),
            Padding(
              padding: EdgeInsets.only(left: 29.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCiSettingsFilled,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: Text(
                      "lbl_param_tres".tr,
                      style: CustomTextStyles.titleLargeBlack90002Regular,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 33.v),
            Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAkarIconsCircleAlertFill,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 4.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_a_propos".tr,
                      style: CustomTextStyles.titleLargeBlack90002Regular,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            Padding(
              padding: EdgeInsets.only(left: 29.h),
              child: Text(
                "lbl_th_me".tr,
                style: CustomTextStyles.titleLargeBlack90002Regular,
              ),
            ),
            SizedBox(height: 9.v),
            Container(
              margin: EdgeInsets.only(left: 18.h),
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder32,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
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
                  CustomImageView(
                    imagePath: ImageConstant.darkMode,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 30.h,
                      top: 22.v,
                      bottom: 18.v,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(height: 26.v),
            Align(
              alignment: Alignment.center,
              child: Text(
                "msg_app_version_1_0_0_0".tr,
                style: CustomTextStyles.bodyMediumOpenSansBlack90002,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLockRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 48.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 70.adaptSize,
            width: 70.adaptSize,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 18.v,
              bottom: 11.v,
            ),
          ),
          Spacer(
            flex: 25,
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_toure_awa2".tr,
                  style: CustomTextStyles.titleLargeWhiteA70001_2,
                ),
                SizedBox(height: 4.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_3_9".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDashiconsStarFilled,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 2.v,
                        bottom: 4.v,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(
            flex: 74,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftWhiteA70001,
            height: 17.v,
            width: 10.h,
            margin: EdgeInsets.only(
              top: 17.v,
              bottom: 65.v,
            ),
          ),
        ],
      ),
    );
  }
}
