import '../mail_or_message_screen/widgets/sms2_item_widget.dart';
import 'models/sms2_item_model.dart';
import 'notifier/mail_or_message_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class MailOrMessageScreen extends ConsumerStatefulWidget {
  const MailOrMessageScreen({Key? key}) : super(key: key);

  @override
  MailOrMessageScreenState createState() => MailOrMessageScreenState();
}

class MailOrMessageScreenState extends ConsumerState<MailOrMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90002,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: SizedBox(
                height: constraints.maxHeight,
                child: Container(
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16.v),
                      _buildWelcome2(context),
                      SizedBox(height: 60.v),
                      _buildBacksheet4(context),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }


  Widget _buildWelcome2(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 75.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage192,
              height: 230.v,
              width: 345.h,
            ),
            SizedBox(height: 50.v),
            Text(
              "msg_dalal_ak_djamm".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildBacksheet4(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 17.v),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(ImageConstant.imgBacksheet3),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, // Align at the bottom
          children: [
            Text(
              "msg_v_rifiez_votre_identit".tr,
              style: CustomTextStyles.bodyLargeGabrielaGray90002,
            ),
            SizedBox(height: 29.v),
            ElevatedButton(
              onPressed: () {
                onTapSms2(context);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(39.0),
                ),
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
                          style: CustomTextStyles.bodyMediumPoppinsSecondaryContainer,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            ElevatedButton(
              onPressed: () {
                onTapMail(context);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(39.0),
                ),
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
                    padding: EdgeInsets.only(left: 16.h, top: 1.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EMail".tr,
                          style: CustomTextStyles.titleLargeGabrielaGray90002,
                        ),
                        Text(
                          "msg_se_connecter_avec".tr,
                          style: CustomTextStyles.bodyMediumPoppinsSecondaryContainer,
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
                padding: EdgeInsets.only(left: 94.h),
                child: Column(
                  children: [
                    SizedBox(
                      width: 155.h,
                      child: Divider(
                        color: theme.colorScheme.secondaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 73.v),
          ],
        ),
      ),
    );
  }



  onTapSms2(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.numberLoginScreen);
  }

  onTapMail(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.loginPageScreen);
  }
}
