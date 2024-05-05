import 'notifier/pw_reset_dark_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/core/utils/validation_functions.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_text_form_field.dart';

class PwResetDarkScreen extends ConsumerStatefulWidget {
  const PwResetDarkScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PwResetDarkScreenState createState() => PwResetDarkScreenState();
}

class PwResetDarkScreenState extends ConsumerState<PwResetDarkScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black90001,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 36.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 32.v,
                      width: 293.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "msg_reinitialiser_mot".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEvaArrowIosBackFill2,
                            height: 30.v,
                            width: 35.h,
                            alignment: Alignment.topLeft,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 44.v),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "msg_entrer_le_mail_associ".tr,
                        style: CustomTextStyles.bodyLargeWhiteA70001_2,
                      ),
                    ),
                    SizedBox(height: 88.v),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "lbl_email".tr,
                        style: CustomTextStyles.bodyLargeWhiteA70001_1,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 11.h),
                      child: Consumer(
                        builder: (context, ref, _) {
                          return CustomTextFormField(
                            controller:
                                ref.watch(pwResetDarkNotifier).emailController,
                            hintText: "lbl_abcd_gmail_com".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            alignment: Alignment.center,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            },
                          );
                        },
                      ),
                    ),
                    Spacer(),
                    SizedBox(height: 40.v),
                    CustomElevatedButton(
                      width: 128.h,
                      text: "lbl_envoyer".tr,
                      margin: EdgeInsets.only(right: 11.h),
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
