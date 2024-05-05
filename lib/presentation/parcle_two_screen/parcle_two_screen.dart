import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_leading_image.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_title.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/custom_app_bar.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class ParcleTwoScreen extends ConsumerStatefulWidget {
  const ParcleTwoScreen({Key? key}) : super(key: key);

  @override
  ParcleTwoScreenState createState() => ParcleTwoScreenState();
}

class ParcleTwoScreenState extends ConsumerState<ParcleTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 6.v),
                child: Column(children: [
                  Container(
                      width: 391.h,
                      margin: EdgeInsets.only(right: 8.h),
                      child: Text("msg_votre_distance_est2".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.headlineSmallBlack90002Regular)),
                  SizedBox(height: 68.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 112.h),
                          child: Text("lbl_500_fcfa_tva".tr,
                              style: CustomTextStyles.headlineSmallGreenA700))),
                  Spacer(flex: 37),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 172.v,
                      width: 177.h),
                  Spacer(flex: 62),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                      width: 128.h,
                      text: "lbl_ok".tr,
                      onPressed: () {
                        onTapOk(context);
                      })
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 38.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 28.h, top: 16.v, bottom: 22.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_bagages".tr, margin: EdgeInsets.only(left: 10.h)));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapOk(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
