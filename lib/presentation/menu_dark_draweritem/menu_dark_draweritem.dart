import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MenuDarkDraweritem extends ConsumerStatefulWidget {
  const MenuDarkDraweritem({Key? key})
      : super(
    key: key,
  );

  @override
  MenuDarkDraweritemState createState() => MenuDarkDraweritemState();
}

class MenuDarkDraweritemState extends ConsumerState<MenuDarkDraweritem> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: MediaQuery.of(context).size.width * (2 / 3), // 2/3 of the screen width
        decoration: AppDecoration.outlineBlack900021,
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
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "lbl_recharger_carte".tr,
                      style: CustomTextStyles.titleLargeWhiteA70001Regular_1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.v),
            Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFaSolidUserFriends,
                    height: 25.v,
                    width: 32.h,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 1.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_inviter_un_ami".tr,
                      style: CustomTextStyles.titleLargeWhiteA70001Regular_1,
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
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "lbl_aide_et_support".tr,
                      style: CustomTextStyles.titleLargeWhiteA70001Regular_1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 29.v),
            Padding(
              padding: EdgeInsets.only(left: 28.h),
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
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "lbl_urgences".tr,
                      style: CustomTextStyles.titleLargeWhiteA70001Regular_1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 26.v),
            Padding(
              padding: EdgeInsets.only(left: 28.h),
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
                    padding: EdgeInsets.only(left: 27.h),
                    child: Text(
                      "lbl_param_tres".tr,
                      style: CustomTextStyles.titleLargeWhiteA70001Regular_1,
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
                    padding: EdgeInsets.only(left: 28.h),
                    child: Text(
                      "lbl_a_propos".tr,
                      style: CustomTextStyles.titleLargeWhiteA70001Regular_1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Text(
                "lbl_th_me".tr,
                style: CustomTextStyles.titleLargeWhiteA70001Regular_1,
              ),
            ),
            SizedBox(height: 9.v),
            Container(
              margin: EdgeInsets.only(left: 23.h),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder39,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 18.v,
                      bottom: 24.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      bottom: 6.v,
                    ),
                    child: CustomIconButton(
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      padding: EdgeInsets.all(18.h),
                      decoration: IconButtonStyleHelper.fillBlueGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMobile,
                      ),
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
                style: CustomTextStyles.bodyMediumOpenSansWhiteA70001,
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
                  "lbl_toure_awa".tr,
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
