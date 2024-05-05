import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class RGlementScreen extends ConsumerStatefulWidget {
  const RGlementScreen({Key? key}) : super(key: key);

  @override
  RGlementScreenState createState() => RGlementScreenState();
}

class RGlementScreenState extends ConsumerState<RGlementScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 17.v,
                                    width: 10.h,
                                    margin:
                                        EdgeInsets.only(top: 5.v, bottom: 6.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("msg_r_glement_voyageurs".tr,
                                        style: theme.textTheme.titleLarge))
                              ])),
                      SizedBox(height: 30.v),
                      Container(
                          width: 360.h,
                          margin: EdgeInsets.only(right: 27.h),
                          child: Text("msg_leur_tablissement".tr,
                              maxLines: 9,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .headlineSmallBlack90002Regular_1
                                  .copyWith(height: 1.04))),
                      SizedBox(height: 63.v),
                      CustomElevatedButton(
                          height: 84.v,
                          text: "msg_voir_le_r_glement".tr,
                          margin: EdgeInsets.only(left: 49.h, right: 56.h),
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallWhiteA70001_1,
                          onPressed: () {
                            onTapVoirLeRglement(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the rGlementTwoScreen when the action is triggered.
  onTapVoirLeRglement(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rGlementTwoScreen,
    );
  }
}
