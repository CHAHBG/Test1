import 'notifier/login_page_dark_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_text_form_field.dart';

class LoginPageDarkScreen extends ConsumerStatefulWidget {
  const LoginPageDarkScreen({Key? key}) : super(key: key);

  @override
  LoginPageDarkScreenState createState() => LoginPageDarkScreenState();
}

class LoginPageDarkScreenState extends ConsumerState<LoginPageDarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 38.v),
                child: Column(children: [
                  SizedBox(height: 13.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage1,
                      height: 185.v,
                      width: 328.h),
                  Container(
                      width: 289.h,
                      margin: EdgeInsets.only(left: 41.h, right: 42.h),
                      decoration: AppDecoration.outlineBlack,
                      child: Text("msg_train_express_regional3".tr,
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleMediumPrimary
                              .copyWith(height: 2.67))),
                  Spacer(flex: 51),
                  Consumer(builder: (context, ref, _) {
                    return CustomTextFormField(
                        controller:
                            ref.watch(loginPageDarkNotifier).usernameController,
                        hintText: "msg_nom_d_utilisateur".tr);
                  }),
                  SizedBox(height: 21.v),
                  Consumer(builder: (context, ref, _) {
                    return CustomTextFormField(
                        controller:
                            ref.watch(loginPageDarkNotifier).passwordController,
                        hintText: "lbl_mot_de_passe2".tr,
                        textInputAction: TextInputAction.done);
                  }),
                  SizedBox(height: 40.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtMotDePasseOubli(context);
                      },
                      child: Text("msg_mot_de_passe_oubli".tr,
                          style: CustomTextStyles.bodyLargeWhiteA70001)),
                  SizedBox(height: 41.v),
                  CustomElevatedButton(
                      text: "lbl_se_connecter".tr,
                      onPressed: () {
                        onTapSeConnecter(context);
                      }),
                  Spacer(flex: 48),
                  GestureDetector(
                      onTap: () {
                        onTapTxtVousnavezpas3(context);
                      },
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_vous_n_avez_pas4".tr,
                                style: CustomTextStyles.bodyLargeffffffff),
                            TextSpan(text: " "),
                            TextSpan(
                                text: "lbl_inscrivez_vous".tr,
                                style: CustomTextStyles.titleMediumff80542b_1)
                          ]),
                          textAlign: TextAlign.left))
                ]))));
  }

  /// Navigates to the pwResetDarkScreen when the action is triggered.
  onTapTxtMotDePasseOubli(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pwResetDarkScreen,
    );
  }

  /// Navigates to the getinhStartedDarkScreen when the action is triggered.
  onTapSeConnecter(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getinhStartedDarkScreen,
    );
  }

  /// Navigates to the signInDarkScreen when the action is triggered.
  onTapTxtVousnavezpas3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInDarkScreen,
    );
  }
}
