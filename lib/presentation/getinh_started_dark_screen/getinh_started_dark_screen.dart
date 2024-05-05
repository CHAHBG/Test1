import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class GetinhStartedDarkScreen extends ConsumerStatefulWidget {
  const GetinhStartedDarkScreen({Key? key}) : super(key: key);

  @override
  GetinhStartedDarkScreenState createState() => GetinhStartedDarkScreenState();
}

class GetinhStartedDarkScreenState
    extends ConsumerState<GetinhStartedDarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                      height: 491.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 24.v, right: 28.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("lbl_passer".tr,
                                          style: CustomTextStyles
                                              .titleLargeWhiteA70001Regular_2),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgArrowRight,
                                          height: 17.v,
                                          width: 10.h,
                                          margin: EdgeInsets.only(
                                              left: 17.h,
                                              top: 6.v,
                                              bottom: 5.v))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup13,
                            height: 12.v,
                            width: 46.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 28.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgR1,
                            height: 491.v,
                            width: 428.h,
                            radius: BorderRadius.circular(15.h),
                            alignment: Alignment.center)
                      ])),
                  _buildGetinhStartedDarkColumn(context)
                ])))));
  }

  /// Section Widget
  Widget _buildGetinhStartedDarkColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 39.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("msg_train_express_regional".tr,
              style: CustomTextStyles.headlineSmallWhiteA70001SemiBold),
          SizedBox(height: 33.v),
          Text("msg_suiver_votre_train".tr,
              style: CustomTextStyles.bodyLargeWhiteA70001),
          SizedBox(height: 122.v),
          CustomElevatedButton(
              text: "lbl_suivant".tr,
              onPressed: () {
                onTapSuivant(context);
              }),
          SizedBox(height: 54.v)
        ]));
  }

  /// Navigates to the getinhStarted2DarkScreen when the action is triggered.
  onTapSuivant(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getinhStarted2DarkScreen,
    );
  }
}
