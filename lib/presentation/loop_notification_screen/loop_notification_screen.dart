import 'notifier/loop_notification_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_pin_code_text_field.dart';

class LoopNotificationScreen extends ConsumerStatefulWidget {
  const LoopNotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoopNotificationScreenState createState() => LoopNotificationScreenState();
}

class LoopNotificationScreenState
    extends ConsumerState<LoopNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90002.withOpacity(0.41),
        resizeToAvoidBottomInset: false,
        body: Opacity(
          opacity: 0.17,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Opacity(
                opacity: 0.17,
                child: Container(
                  height: 1008.v,
                  width: 426.h,
                  margin: EdgeInsets.only(right: 2.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 775.v,
                          width: 358.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24.h,
                                    vertical: 132.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillBlack900021.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder13,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 293.adaptSize,
                                        width: 293.adaptSize,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector6,
                                              height: 254.v,
                                              width: 281.h,
                                              alignment: Alignment.bottomCenter,
                                              margin:
                                                  EdgeInsets.only(bottom: 2.v),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: 293.adaptSize,
                                                width: 293.adaptSize,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .img6AboutOurTeam32,
                                                      height: 293.adaptSize,
                                                      width: 293.adaptSize,
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        height: 290.v,
                                                        width: 293.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .gray90002,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 35.v),
                                      Text(
                                        "lbl_you_re_in".tr,
                                        style: CustomTextStyles
                                            .headlineSmallGabrielaGray90002,
                                      ),
                                      SizedBox(height: 8.v),
                                      SizedBox(
                                        width: 308.h,
                                        child: Text(
                                          "msg_we_hope_you_have".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodyMediumPoppinsGray9000213_1,
                                        ),
                                      ),
                                      SizedBox(height: 95.v),
                                    ],
                                  ),
                                ),
                              ),
                              _buildBacksheetColumn(context),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  decoration:
                                      AppDecoration.fillBlack900021.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder13,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 52.v),
                                      SizedBox(
                                        height: 220.adaptSize,
                                        width: 220.adaptSize,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .img6AboutOurTeam34,
                                              height: 220.adaptSize,
                                              width: 220.adaptSize,
                                              alignment: Alignment.center,
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 220.adaptSize,
                                                width: 220.adaptSize,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray90002,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "lbl_welcome_back".tr,
                                        style: CustomTextStyles
                                            .headlineSmallGabrielaGray90002Regular,
                                      ),
                                      SizedBox(height: 9.v),
                                      Container(
                                        width: 314.h,
                                        margin: EdgeInsets.only(
                                          left: 21.h,
                                          right: 22.h,
                                        ),
                                        child: Text(
                                          "msg_once_verified_the".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodyMediumPoppinsGray9000213_1,
                                        ),
                                      ),
                                      SizedBox(height: 34.v),
                                      _buildBacksheetColumn1(context),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 49.h,
                            vertical: 20.v,
                          ),
                          decoration: AppDecoration.fillLightBlue.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgIcons12,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 12.h),
                              ),
                              SizedBox(height: 34.v),
                              Text(
                                "msg_we_ve_sent_you_a".tr,
                                style: CustomTextStyles.headlineMediumGabriela,
                              ),
                              SizedBox(height: 5.v),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 18.h,
                                  right: 21.h,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "msg_the_code_was_sent".tr,
                                      style: CustomTextStyles
                                          .bodyMediumPoppinsSecondaryContainer15,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text(
                                        "msg_221_77_123_45_67".tr,
                                        style: CustomTextStyles
                                            .bodyMediumPoppinsGray9000215,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 31.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_resend_code_in".tr,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsGray90002,
                                  ),
                                  Container(
                                    width: 29.h,
                                    margin: EdgeInsets.only(left: 4.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "lbl_0".tr,
                                          style: CustomTextStyles
                                              .bodyMediumPoppinsGray90002,
                                        ),
                                        Text(
                                          "lbl_20".tr,
                                          style: CustomTextStyles
                                              .bodyMediumPoppinsGray90002,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.v),
                              Padding(
                                padding: EdgeInsets.only(right: 3.h),
                                child: Consumer(
                                  builder: (context, ref, _) {
                                    return CustomPinCodeTextField(
                                      context: context,
                                      controller: ref
                                          .watch(loopNotificationNotifier)
                                          .otpController,
                                      onChanged: (value) {
                                        ref
                                            .watch(loopNotificationNotifier)
                                            .otpController
                                            ?.text = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 24.v),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBacksheetColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 44.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgBacksheet6,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 23.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 124.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder29,
              ),
              child: Text(
                "lbl_continue".tr,
                style: CustomTextStyles.bodyLargeGabrielaWhiteA700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBacksheetColumn1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 44.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgBacksheet7,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Text(
            "msg_verify_your_identity".tr,
            style: CustomTextStyles.bodyLargeGabrielaGray9000216,
          ),
          SizedBox(height: 27.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder36,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcons9,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 11.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_sms".tr,
                        style: CustomTextStyles.bodyLargeGabrielaGray90002_1,
                      ),
                      Text(
                        "msg_39_342_401_97_23".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightGray90002,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 11.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder36,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcon2,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 12.v),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_google_authenticator".tr,
                        style: CustomTextStyles.bodyLargeGabrielaGray90002_1,
                      ),
                      Text(
                        "msg_you_can_find_the".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightGray90002,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 12.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 87.v),
        ],
      ),
    );
  }
}
