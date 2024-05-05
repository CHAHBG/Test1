import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class Bagages2DarkScreen extends ConsumerStatefulWidget {
  const Bagages2DarkScreen({Key? key}) : super(key: key);

  @override
  Bagages2DarkScreenState createState() => Bagages2DarkScreenState();
}

class Bagages2DarkScreenState extends ConsumerState<Bagages2DarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 17.v,
                                    width: 10.h,
                                    margin:
                                        EdgeInsets.only(top: 3.v, bottom: 9.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Text("lbl_bagages".tr,
                                        style: theme.textTheme.titleLarge))
                              ])),
                      SizedBox(height: 17.v),
                      Container(
                          width: 373.h,
                          margin: EdgeInsets.only(right: 26.h),
                          child: Text("msg_votre_distance_est".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .titleLargeWhiteA70001Regular)),
                      SizedBox(height: 93.v),
                      Padding(
                          padding: EdgeInsets.only(left: 112.h),
                          child: Text("lbl_500_fcfa_tva".tr,
                              style: CustomTextStyles.headlineSmallGreenA700)),
                      Spacer(flex: 37),
                      CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 172.v,
                          width: 177.h,
                          alignment: Alignment.center),
                      Spacer(flex: 62),
                      SizedBox(height: 23.v),
                      CustomElevatedButton(
                          width: 128.h,
                          text: "lbl_ok".tr,
                          alignment: Alignment.center)
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
