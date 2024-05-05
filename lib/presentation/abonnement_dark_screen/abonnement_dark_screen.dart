import 'notifier/abonnement_dark_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_leading_image.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_title.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/custom_app_bar.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_search_view.dart';

class AbonnementDarkScreen extends ConsumerStatefulWidget {
  const AbonnementDarkScreen({Key? key}) : super(key: key);

  @override
  AbonnementDarkScreenState createState() => AbonnementDarkScreenState();
}

class AbonnementDarkScreenState extends ConsumerState<AbonnementDarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 19.v),
                child: Column(children: [
                  SizedBox(height: 30.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 28.h),
                              child: Column(children: [
                                Consumer(builder: (context, ref, _) {
                                  return CustomSearchView(
                                      controller: ref
                                          .watch(abonnementDarkNotifier)
                                          .searchController,
                                      hintText: "lbl_rechercher".tr,
                                      borderDecoration:
                                          SearchViewStyleHelper.fillGray,
                                      fillColor: appTheme.gray900);
                                }),
                                SizedBox(height: 10.v),
                                Container(
                                    padding: EdgeInsets.all(7.h),
                                    decoration: AppDecoration.fillBlack900022,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text(
                                                  "msg_forfait_de_10_voyages"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .titleLargeBold)),
                                          SizedBox(height: 8.v),
                                          _buildCarteTerBlancOneRow(context),
                                          SizedBox(height: 25.v),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                  "msg_abonnement_mensuel".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeBold)),
                                          SizedBox(height: 10.v),
                                          _buildCarteTerBlancOneRow2(context),
                                          SizedBox(height: 73.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text(
                                                  "msg_abonnement_hebdo".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeBold)),
                                          SizedBox(height: 10.v),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h, right: 11.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgCarteterblanc1,
                                                            height: 84.v,
                                                            width: 89.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 34.v,
                                                                    bottom:
                                                                        9.v)),
                                                        Expanded(
                                                            child: Container(
                                                                width: 239.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 10
                                                                            .h),
                                                                child: Text(
                                                                    "msg_pour_voyager_de2"
                                                                        .tr,
                                                                    maxLines: 8,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge!
                                                                        .copyWith(
                                                                            height:
                                                                                1.33))))
                                                      ]))),
                                          SizedBox(height: 60.v),
                                          Container(
                                              width: 327.h,
                                              margin: EdgeInsets.only(
                                                  left: 8.h, right: 22.h),
                                              child: Text(
                                                  "msg_abonnement_mensuel2".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .titleLargeBold)),
                                          SizedBox(height: 11.v),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.h),
                                              child: Row(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCarteterblanc1,
                                                    height: 84.v,
                                                    width: 89.h,
                                                    margin: EdgeInsets.only(
                                                        top: 12.v)),
                                                Expanded(
                                                    child: Container(
                                                        width: 241.h,
                                                        margin: EdgeInsets.only(
                                                            left: 11.h),
                                                        child: Text(
                                                            "msg_pour_voyager_de3"
                                                                .tr,
                                                            maxLines: 6,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge!
                                                                .copyWith(
                                                                    height:
                                                                        1.33))))
                                              ])),
                                          SizedBox(height: 70.v),
                                          Container(
                                              width: 306.h,
                                              margin: EdgeInsets.only(
                                                  left: 8.h, right: 43.h),
                                              child: Text(
                                                  "msg_abonnement_hebdo2".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .titleLargeBold)),
                                          SizedBox(height: 5.v),
                                          _buildCarteTerBlancOneRow3(context),
                                          SizedBox(height: 99.v)
                                        ]))
                              ]))))
                ])),
            bottomNavigationBar: _buildVoirVotreCarte(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 38.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 28.h, top: 26.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_abonnement".tr, margin: EdgeInsets.only(left: 10.h)));
  }

  /// Section Widget
  Widget _buildCarteTerBlancOneRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 2.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCarteterblanc1,
              height: 84.v,
              width: 89.h,
              margin: EdgeInsets.only(top: 34.v, bottom: 41.v)),
          Expanded(
              child: Container(
                  width: 248.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Text("msg_forfait_de_10_voyages2".tr,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.labelLarge!.copyWith(height: 1.33))))
        ]));
  }

  /// Section Widget
  Widget _buildCarteTerBlancOneRow2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 2.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgCarteterblanc1,
              height: 84.v,
              width: 89.h,
              margin: EdgeInsets.only(top: 18.v, bottom: 9.v)),
          Expanded(
              child: Container(
                  width: 247.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Text("msg_pour_voyager_de".tr,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.labelLarge!.copyWith(height: 1.33))))
        ]));
  }

  /// Section Widget
  Widget _buildCarteTerBlancOneRow3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgCarteterblanc1,
              height: 84.v,
              width: 89.h,
              margin: EdgeInsets.only(top: 18.v, bottom: 9.v)),
          Expanded(
              child: Container(
                  width: 251.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Text("msg_pour_voyager_de4".tr,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.labelLarge!.copyWith(height: 1.33))))
        ]));
  }

  /// Section Widget
  Widget _buildVoirVotreCarte(BuildContext context) {
    return CustomElevatedButton(
        height: 84.v,
        width: 283.h,
        text: "msg_voir_votre_carte".tr,
        margin: EdgeInsets.only(left: 69.h, right: 76.h, bottom: 40.v),
        buttonTextStyle: CustomTextStyles.headlineSmallWhiteA70001_1);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
