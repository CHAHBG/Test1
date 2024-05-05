import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class CarteScreen extends ConsumerStatefulWidget {
  const CarteScreen({Key? key}) : super(key: key);

  @override
  CarteScreenState createState() => CarteScreenState();
}

class CarteScreenState extends ConsumerState<CarteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary.withOpacity(0.14),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 90.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeftPrimary,
                          height: 19.v,
                          width: 10.h,
                          margin: EdgeInsets.only(left: 14.h),
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      Spacer(flex: 44),
                      _buildComponentThree(context),
                      Spacer(flex: 55)
                    ]))));
  }

  /// Section Widget
  Widget _buildComponentThree(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 9.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 54.v),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder10,
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgComponent3),
                fit: BoxFit.cover)),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_awa_toure2".tr,
                  style:
                      CustomTextStyles.headlineSmallAbyssinicaSILWhiteA70001),
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.only(right: 192.h),
                  child: Row(children: [
                    Text("lbl_2002".tr,
                        style: CustomTextStyles.bodyLargeAdobeBlankWhiteA70001),
                    Spacer(flex: 33),
                    Text("lbl_1990".tr,
                        style: CustomTextStyles.bodyLargeAdobeBlankWhiteA70001),
                    Spacer(flex: 33),
                    Text("lbl_5005".tr,
                        style: CustomTextStyles.bodyLargeAdobeBlankWhiteA70001),
                    Spacer(flex: 33),
                    Text("lbl_3003".tr,
                        style: CustomTextStyles.bodyLargeAdobeBlankWhiteA70001)
                  ])),
              SizedBox(height: 7.v)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
