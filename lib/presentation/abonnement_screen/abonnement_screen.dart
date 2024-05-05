import 'notifier/abonnement_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_title.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/custom_app_bar.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_search_view.dart';

class AbonnementScreen extends ConsumerStatefulWidget {
  const AbonnementScreen({Key? key}) : super(key: key);

  @override
  AbonnementScreenState createState() => AbonnementScreenState();
}

class AbonnementScreenState extends ConsumerState<AbonnementScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 30.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 28.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Consumer(builder: (context, ref, _) {
                                return CustomSearchView(
                                    controller: ref
                                        .watch(abonnementNotifier)
                                        .searchController,
                                    hintText: "lbl_rechercher".tr);
                              }),
                              SizedBox(height: 10.v),
                              Container(
                                  padding: EdgeInsets.all(7.h),
                                  decoration: AppDecoration.fillPrimary2,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text(
                                                "msg_forfait_de_10_voyages".tr,
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
                                            padding: EdgeInsets.only(left: 8.h),
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
                                                                  bottom: 9.v)),
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
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack90002
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
                                                overflow: TextOverflow.ellipsis,
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
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack90002
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
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleLargeBold)),
                                        SizedBox(height: 5.v),
                                        _buildCarteTerBlancOneRow3(context),
                                        SizedBox(height: 99.v)
                                      ])),
                              SizedBox(height: 25.v),
                              CustomElevatedButton(
                                  height: 84.v,
                                  text: "msg_voir_votre_carte2".tr,
                                  margin:
                                      EdgeInsets.only(left: 35.h, right: 54.h),
                                  buttonTextStyle: CustomTextStyles
                                      .headlineSmallWhiteA70001_1,
                                  onPressed: () {
                                    onTapVoirVotreCarte(context);
                                  })
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 38.h,
        leading: Container(
            height: 19.v,
            width: 10.h,
            margin: EdgeInsets.only(left: 28.h, top: 26.v, bottom: 10.v),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftPrimary,
                  height: 19.v,
                  width: 10.h,
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftPrimary,
                  height: 19.v,
                  width: 10.h,
                  alignment: Alignment.center)
            ])),
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
                      style: CustomTextStyles.labelLargeBlack90002
                          .copyWith(height: 1.33))))
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
                      style: CustomTextStyles.labelLargeBlack90002
                          .copyWith(height: 1.33))))
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
                      style: CustomTextStyles.labelLargeBlack90002
                          .copyWith(height: 1.33))))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the carteScreen when the action is triggered.
  onTapVoirVotreCarte(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.carteScreen,
    );
  }
}
