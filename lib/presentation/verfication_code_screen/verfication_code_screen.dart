import 'notifier/verfication_code_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_pin_code_text_field.dart';

class VerficationCodeScreen extends ConsumerStatefulWidget {
  const VerficationCodeScreen({Key? key})
      : super(
    key: key,
  );

  @override
  VerficationCodeScreenState createState() => VerficationCodeScreenState();
}

class VerficationCodeScreenState extends ConsumerState<VerficationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90002,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1020.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Opacity(
                      opacity: 0.4,
                      child: SizedBox(
                        height: 774.v,
                        width: 427.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                            ),
                            _buildBacksheet(context),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                decoration:
                                AppDecoration.fillWhiteA70001.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder13,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 144.v),
                                    SizedBox(
                                      height: 520.v,
                                      width: 307.h,
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
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
                                                        imagePath: ImageConstant
                                                            .imgVector6,
                                                        height: 253.v,
                                                        width: 280.h,
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        margin: EdgeInsets.only(
                                                            bottom: 2.v),
                                                      ),
                                                      Align(
                                                        alignment:
                                                        Alignment.center,
                                                        child: SizedBox(
                                                          height: 293.adaptSize,
                                                          width: 293.adaptSize,
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                ImageConstant
                                                                    .img6AboutOurTeam32,
                                                                height: 293
                                                                    .adaptSize,
                                                                width: 293
                                                                    .adaptSize,
                                                                alignment:
                                                                Alignment
                                                                    .center,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                Alignment
                                                                    .center,
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
                                                      .headlineSmallGabrielaGray90002Regular25,
                                                ),
                                                SizedBox(height: 8.v),
                                                SizedBox(
                                                  width: 307.h,
                                                  child: Text(
                                                    "msg_we_hope_you_have".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .bodyMediumPoppinsGray9000213,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgLoader,
                                            height: 111.v,
                                            width: 88.h,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 109.v),
                                    Divider(
                                      color: appTheme.teal50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 22.h,
                        vertical: 100.v, // Adjusted vertical padding here
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL12,
                      ),
                      child: SizedBox(
                        height: 2 * MediaQuery.of(context).size.height / 3, // Updated height
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcons12,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 39.h),
                            ),
                            SizedBox(height: 14.v),
                            Text(
                              "msg_nous_vous_avons".tr,
                              style: CustomTextStyles.headlineSmallGabrielaWhiteA70001,
                            ),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text(
                                      "msg_le_code_a_t_envoy".tr,
                                      style: CustomTextStyles.bodyMediumPoppinsSecondaryContainer15,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text(
                                      "msg_221_77_123_45_67".tr,
                                      style: CustomTextStyles.bodyMediumPoppinsWhiteA7000115,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 57.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 28.h,
                                right: 31.h,
                              ),
                              child: Consumer(
                                builder: (context, ref, _) {
                                  return CustomPinCodeTextField(
                                    context: context,
                                    controller: ref
                                        .watch(verficationCodeNotifier)
                                        .otpController,
                                    onChanged: (value) {
                                      ref
                                          .watch(verficationCodeNotifier)
                                          .otpController
                                          ?.text = value;
                                    },
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 34.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(
                                    "msg_renvoyez_un_code".tr,
                                    style: CustomTextStyles.bodyMediumPoppinsWhiteA70001,
                                  ),
                                ),
                                Container(
                                  width: 29.h,
                                  margin: EdgeInsets.only(left: 3.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "lbl_0".tr,
                                        style: CustomTextStyles.bodyMediumPoppinsWhiteA70001,
                                      ),
                                      Text(
                                        "lbl_20".tr,
                                        style: CustomTextStyles.bodyMediumPoppinsWhiteA70001,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 34.v),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBacksheet(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 80.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgBacksheet,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "msg_v_rifiez_votre_identit".tr,
              style: CustomTextStyles.bodyLargeGabrielaGray90002,
            ),
            SizedBox(height: 29.v),
            Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder39,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcons4,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 11.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_sms".tr,
                          style: CustomTextStyles.titleLargeGabrielaGray90002,
                        ),
                        Text(
                          "msg_221_77_123_45_67".tr,
                          style: CustomTextStyles.bodyMediumPoppinsPrimary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder39,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcon2,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 10.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 1.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_google_authenticator".tr,
                          style: CustomTextStyles.titleLargeGabrielaGray90002,
                        ),
                        Text(
                          "msg_se_connecter_avec".tr,
                          style: CustomTextStyles.bodyMediumPoppinsPrimary,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightGray90002,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 10.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 95.h),
                child: Column(
                  children: [
                    Text(
                      "msg_register_new_device".tr,
                      style: CustomTextStyles.bodyLargeGabrielaPrimary,
                    ),
                    SizedBox(
                      width: 155.h,
                      child: Divider(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 83.v),
          ],
        ),
      ),
    );
  }
}
