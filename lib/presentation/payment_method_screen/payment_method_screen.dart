import '../payment_method_screen/widgets/paymentmethod_item_widget.dart';
import 'models/paymentmethod_item_model.dart';
import 'notifier/payment_method_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class PaymentMethodScreen extends ConsumerStatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  PaymentMethodScreenState createState() => PaymentMethodScreenState();
}

class PaymentMethodScreenState extends ConsumerState<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 23.v),
                      _buildHeader(context),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 43.h),
                          child: Text("lbl_banque".tr,
                              style:
                                  CustomTextStyles.titleLargePoppinsGray90005)),
                      SizedBox(height: 56.v),
                      _buildPaymentMethod(context),
                      SizedBox(height: 42.v),
                      Padding(
                          padding: EdgeInsets.only(left: 41.h),
                          child: Text("msg_portefeuille_mobile".tr,
                              style:
                                  CustomTextStyles.titleLargePoppinsGray90005)),
                      SizedBox(height: 53.v),
                      _buildCheckmark(context),
                      SizedBox(height: 230.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              width: 256.h,
                              child: Divider(
                                  color: appTheme.black90002.withOpacity(0.6),
                                  endIndent: 121.h)))
                    ]))));
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 17.v,
              width: 10.h,
              margin: EdgeInsets.only(top: 4.v, bottom: 6.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Text("msg_choisissez_votre2".tr,
              style: CustomTextStyles.titleLargeBold)
        ]));
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h, right: 23.h),
            child: Consumer(builder: (context, ref, _) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 68.v,
                      crossAxisCount: 3,
                      mainAxisSpacing: 25.h,
                      crossAxisSpacing: 25.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ref
                          .watch(paymentMethodNotifier)
                          .paymentMethodModelObj
                          ?.paymentmethodItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    PaymentmethodItemModel model = ref
                            .watch(paymentMethodNotifier)
                            .paymentMethodModelObj
                            ?.paymentmethodItemList[index] ??
                        PaymentmethodItemModel();
                    return PaymentmethodItemWidget(model, onTapVisa: () {
                      onTapVisa(context);
                    });
                  });
            })));
  }

  /// Section Widget
  Widget _buildCheckmark(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h, right: 23.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 229.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle310,
                                      height: 67.v,
                                      width: 102.h,
                                      radius: BorderRadius.circular(8.h),
                                      onTap: () {
                                        onTapImgImage(context);
                                      }),
                                  Container(
                                      height: 67.v,
                                      width: 102.h,
                                      decoration: AppDecoration.outlineBlack,
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle367x102,
                                                height: 67.v,
                                                width: 102.h,
                                                radius:
                                                    BorderRadius.circular(8.h),
                                                alignment: Alignment.center,
                                                onTap: () {
                                                  onTapImgImage1(context);
                                                }),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                    height: 7.v,
                                                    width: 6.h,
                                                    margin: EdgeInsets.only(
                                                        top: 4.v, right: 4.h),
                                                    decoration: AppDecoration
                                                        .fillWhiteA
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder3),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCheckmarkIndigo900,
                                                        height: 7.v,
                                                        width: 6.h,
                                                        alignment:
                                                            Alignment.center)))
                                          ]))
                                ])),
                        SizedBox(height: 32.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle31,
                            height: 67.v,
                            width: 102.h,
                            radius: BorderRadius.circular(8.h),
                            margin: EdgeInsets.only(left: 5.h),
                            onTap: () {
                              onTapImgImage2(context);
                            })
                      ]),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle38,
                      height: 67.v,
                      width: 102.h,
                      radius: BorderRadius.circular(8.h),
                      margin: EdgeInsets.only(left: 24.h, bottom: 99.v),
                      onTap: () {
                        onTapImgImage3(context);
                      })
                ])));
  }

  /// Navigates to the lightVersionSixScreen when the action is triggered.
  onTapVisa(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.lightVersionSixScreen);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the lightVersionSixScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.lightVersionSixScreen,
    );
  }

  /// Navigates to the lightVersionSixScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.lightVersionSixScreen,
    );
  }

  /// Navigates to the lightVersionSixScreen when the action is triggered.
  onTapImgImage2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.lightVersionSixScreen,
    );
  }

  /// Navigates to the lightVersionSixScreen when the action is triggered.
  onTapImgImage3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.lightVersionSixScreen,
    );
  }
}
