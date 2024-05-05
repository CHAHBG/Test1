import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class GetinhStartedTwoScreen extends ConsumerStatefulWidget {
  const GetinhStartedTwoScreen({Key? key}) : super(key: key);

  @override
  GetinhStartedTwoScreenState createState() => GetinhStartedTwoScreenState();
}

class GetinhStartedTwoScreenState
    extends ConsumerState<GetinhStartedTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 475.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup13,
                            height: 12.v,
                            width: 46.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 15.v)),
                        Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapPasserTwo(context);
                                },
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 16.v, right: 13.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                                  left: 2.h,
                                                  top: 7.v,
                                                  bottom: 4.v))
                                        ])))),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 475.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.img1642772581LeT,
                                          height: 475.v,
                                          width: 428.h,
                                          radius: BorderRadius.circular(14.h),
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsBlack90002,
                                          height: 12.v,
                                          width: 46.h,
                                          alignment: Alignment.bottomCenter)
                                    ])))
                      ])),
                  _buildEighteenSection(context)
                ]))));
  }

  /// Section Widget
  Widget _buildEighteenSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 42.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup18), fit: BoxFit.cover)),
        child: Column(children: [
          Text("msg_trouver_facilement".tr,
              style: CustomTextStyles.headlineSmallBlack90002SemiBold),
          SizedBox(height: 40.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 372.h,
                  margin: EdgeInsets.only(right: 28.h),
                  child: Text("msg_trouver_votre_train".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeBlack90002_2
                          .copyWith(height: 1.28)))),
          SizedBox(height: 98.v),
          CustomElevatedButton(
              text: "lbl_suivant".tr,
              margin: EdgeInsets.symmetric(horizontal: 14.h),
              onPressed: () {
                onTapSuivant(context);
              }),
          SizedBox(height: 38.v)
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapPasserTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSuivant(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
