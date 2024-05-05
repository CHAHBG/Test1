import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class GetinhStarted2DarkScreen extends ConsumerStatefulWidget {
  const GetinhStarted2DarkScreen({Key? key}) : super(key: key);

  @override
  GetinhStarted2DarkScreenState createState() =>
      GetinhStarted2DarkScreenState();
}

class GetinhStarted2DarkScreenState
    extends ConsumerState<GetinhStarted2DarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            body: SizedBox(
                height: 882.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: 487.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.img1642772581LeT487x428,
                                    height: 487.v,
                                    width: 428.h,
                                    radius: BorderRadius.circular(14.h),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            191.h, 20.v, 28.h, 27.v),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup13,
                                                  height: 12.v,
                                                  width: 46.h,
                                                  margin: EdgeInsets.only(
                                                      top: 427.v)),
                                              Spacer(),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 409.v),
                                                  child: Text("lbl_passer".tr,
                                                      style: CustomTextStyles
                                                          .titleLargeBlack90002)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowRightBlack90002,
                                                  height: 17.v,
                                                  width: 10.h,
                                                  margin: EdgeInsets.only(
                                                      top: 7.v, bottom: 414.v),
                                                  onTap: () {
                                                    onTapImgArrowRight(context);
                                                  })
                                            ])))
                              ]))),
                  _buildGetinhStartedTwoColumn(context)
                ]))));
  }

  /// Section Widget
  Widget _buildGetinhStartedTwoColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 31.v),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("msg_trouver_facilement".tr,
                      style: CustomTextStyles.headlineSmallWhiteA70001SemiBold),
                  SizedBox(height: 51.v),
                  Container(
                      width: 372.h,
                      margin: EdgeInsets.only(left: 5.h),
                      child: Text("msg_trouver_votre_train".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeWhiteA70001
                              .copyWith(height: 1.28))),
                  SizedBox(height: 98.v),
                  CustomElevatedButton(
                      text: "lbl_suivant".tr,
                      margin: EdgeInsets.symmetric(horizontal: 3.h),
                      onPressed: () {
                        onTapSuivant(context);
                      }),
                  SizedBox(height: 49.v)
                ])));
  }

  /// Navigates to the homeDarkScreen when the action is triggered.
  onTapImgArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeDarkScreen,
    );
  }

  /// Navigates to the homeDarkScreen when the action is triggered.
  onTapSuivant(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeDarkScreen,
    );
  }
}
