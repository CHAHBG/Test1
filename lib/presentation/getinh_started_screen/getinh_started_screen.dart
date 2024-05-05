import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GetinhStartedScreen extends ConsumerStatefulWidget {
  const GetinhStartedScreen({Key? key}) : super(key: key);

  @override
  GetinhStartedScreenState createState() => GetinhStartedScreenState();
}

class GetinhStartedScreenState extends ConsumerState<GetinhStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children:  [
                  _buildFifteenStack(context),
                  SizedBox(height: 37.v),
                  _buildSuivantStack(context)
                ]))));
  }

  /// Section Widget
  Widget _buildFifteenStack(BuildContext context) {
    return SizedBox(
        height: 460.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgR1460x428,
              height: 460.v,
              width: 428.h,
              radius: BorderRadius.circular(15.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 191.h, right: 28.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapFifteen(context);
                                },
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("lbl_passer".tr,
                                          style: CustomTextStyles
                                              .titleLargeRegular),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowRightPrimary,
                                          height: 17.v,
                                          width: 10.h,
                                          margin: EdgeInsets.only(
                                              left: 2.h, top: 7.v, bottom: 4.v))
                                    ]))),
                        SizedBox(height: 397.v),
                        SizedBox(
                            height: 12.v,
                            child: AnimatedSmoothIndicator(
                                activeIndex: 0,
                                count: 2,
                                effect: ScrollingDotsEffect(
                                    activeDotColor: Color(0X1212121D),
                                    dotHeight: 12.v)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSuivantStack(BuildContext context) {
    return SizedBox(
        height: 381.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.h, vertical: 46.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup17),
                          fit: BoxFit.cover)),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("msg_suiver_votre_train".tr,
                        style: CustomTextStyles.bodyLargeBlack90002_2),
                    SizedBox(height: 149.v),
                    CustomElevatedButton(
                        text: "lbl_suivant".tr,
                        onPressed: () {
                          onTapSuivant(context);
                        }),
                    SizedBox(height: 31.v)
                  ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Text("msg_train_express_regional2".tr,
                  style: CustomTextStyles.headlineSmallBlack90002SemiBold))
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapFifteen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the getinhStartedTwoScreen when the action is triggered.
  onTapSuivant(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getinhStartedTwoScreen,
    );
  }
}
