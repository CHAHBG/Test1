import 'notifier/login_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_text_form_field.dart';

class LoginPageScreen extends ConsumerStatefulWidget {
  const LoginPageScreen({Key? key})
      : super(
    key: key,
  );

  @override
  LoginPageScreenState createState() => LoginPageScreenState();
}

class LoginPageScreenState extends ConsumerState<LoginPageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 42.v,
          ),
          child: Column(
            children: [
              Spacer(
                flex: 40,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAtomsMedia,
                height: 83.v,
                width: 101.h,
              ),
              Spacer(
                flex: 30,
              ),
              Consumer(
                builder: (context, ref, _) {
                  return CustomTextFormField(
                    controller: ref.watch(loginPageNotifier).usernameController,
                    hintText: "msg_nom_d_utilisateur".tr,
                  );
                },
              ),
              SizedBox(height: 20.v),
              Consumer(
                builder: (context, ref, _) {
                  return CustomTextFormField(
                    controller: ref.watch(loginPageNotifier).passwordController,
                    hintText: "lbl_mot_de_passe".tr,
                    textInputAction: TextInputAction.done,
                  );
                },
              ),
              SizedBox(height: 45.v),
              GestureDetector(
                onTap: () {
                  onTapMot2Passe(context);
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 87.h),
                    child: Text(
                      "msg_mot_de_passe_oubli".tr,
                      style: CustomTextStyles.bodyLargeBlack90002_6,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 37.v),
              CustomElevatedButton(
                text: "lbl_suivant".tr,
              ),
              Spacer(
                flex: 28,
              ),
              GestureDetector(
                onTap: () {
                  onTapInscrivezVous(context);
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_vous_n_avez_pas2".tr,
                        style: CustomTextStyles.bodyLargeff000000,
                      ),
                      TextSpan(
                        text: "lbl_inscrivez_vous".tr,
                        style: CustomTextStyles.titleMediumff000000_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapMot2Passe(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pwResetScreen,
    );
  }

  void onTapInscrivezVous(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }
}
