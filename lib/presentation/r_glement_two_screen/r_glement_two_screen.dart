import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_leading_image.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_subtitle.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/custom_app_bar.dart';

class RGlementTwoScreen extends ConsumerStatefulWidget {
  const RGlementTwoScreen({Key? key}) : super(key: key);

  @override
  RGlementTwoScreenState createState() => RGlementTwoScreenState();
}

class RGlementTwoScreenState extends ConsumerState<RGlementTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 9.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.img1642772490Titr,
                                  height: 216.v,
                                  width: 481.h),
                              SizedBox(height: 10.v),
                              Container(
                                  width: 442.h,
                                  margin:
                                      EdgeInsets.only(left: 5.h, right: 33.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_1".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text:
                                                "msg_les_tarifs_applicables".tr,
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(height: 1.25)),
                                        TextSpan(
                                            text: "lbl_2".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text: "msg_tout_voyageur_pour".tr,
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(height: 1.25)),
                                        TextSpan(
                                            text: "lbl_3".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text: "msg_les_titres_de_transport"
                                                .tr,
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(height: 1.25)),
                                        TextSpan(
                                            text: "lbl_4".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text:
                                                "msg_le_titre_de_transport".tr,
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(height: 1.25)),
                                        TextSpan(
                                            text: "lbl_5".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text:
                                                "msg_tout_voyageur_n_ayant".tr,
                                            style: theme.textTheme.bodyMedium),
                                        TextSpan(
                                            text: "lbl_6".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text: "msg_chaque_rame_du_ter".tr,
                                            style: theme.textTheme.bodyMedium),
                                        TextSpan(
                                            text: "lbl_7".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text: "msg_l_information_en".tr,
                                            style: theme.textTheme.bodyMedium),
                                        TextSpan(
                                            text: "lbl_8".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text: "msg_les_r_clamations".tr,
                                            style: theme.textTheme.bodyMedium),
                                        TextSpan(
                                            text: "lbl_9".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text: "msg_le_transport_de".tr,
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(height: 1.25)),
                                        TextSpan(
                                            text: "lbl_10".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text: "msg_la_civilit_avant".tr,
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(height: 1.25)),
                                        TextSpan(
                                            text: "lbl_11".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text: "msg_les_interdictions".tr,
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(height: 1.25)),
                                        TextSpan(
                                            text: "lbl_12".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text: "msg_tout_client_est".tr,
                                            style: theme.textTheme.bodyMedium),
                                        TextSpan(
                                            text: "lbl_13".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "msg_les_horaires_d_ouverture"
                                                .tr,
                                            style: theme.textTheme.bodyMedium),
                                        TextSpan(
                                            text: "lbl_14".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b),
                                        TextSpan(
                                            text:
                                                "msg_les_voyageurs_doivent".tr,
                                            style: theme.textTheme.bodyMedium),
                                        TextSpan(
                                            text: "msg_15_en_cas_de_malaise".tr,
                                            style: CustomTextStyles
                                                .titleLargeInterff80542b
                                                .copyWith(height: 1.25))
                                      ]),
                                      textAlign: TextAlign.left))
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 30.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftWhiteA70001,
            margin: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "msg_r_glement_voyageurs2".tr,
            margin: EdgeInsets.only(left: 77.h)),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
