import 'notifier/sign_in_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/core/utils/validation_functions.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_text_form_field.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  SignInScreenState createState() => SignInScreenState();
}

// ignore_for_file: must_be_immutable
class SignInScreenState extends ConsumerState<SignInScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 17.h, vertical: 36.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                      height: 32.v,
                                      width: 204.h,
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                    "lbl_cr_er_un_compte".tr,
                                                    style: theme
                                                        .textTheme.titleLarge)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEvaArrowIosBackFill2,
                                                height: 30.v,
                                                width: 35.h,
                                                alignment: Alignment.topLeft)
                                          ]))),
                              SizedBox(height: 47.v),
                              Container(
                                  height: 88.adaptSize,
                                  width: 88.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24.h, vertical: 23.v),
                                  decoration: AppDecoration.fillPrimary1
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder44),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgUser,
                                      height: 41.v,
                                      width: 39.h,
                                      alignment: Alignment.center)),
                              SizedBox(height: 72.v),
                              _buildName(context),
                              SizedBox(height: 20.v),
                              _buildPhone(context),
                              SizedBox(height: 20.v),
                              _buildNationalIdentificationNumber(context),
                              SizedBox(height: 20.v),
                              _buildEmail(context),
                              SizedBox(height: 20.v),
                              _buildPassword(context),
                              SizedBox(height: 90.v),
                              _buildCreateAccount(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 10.h),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref.watch(signInNotifier).nameController,
              hintText: "lbl_nom".tr,
              borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
              fillColor: appTheme.blueGray50);
        }));
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 10.h),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref.watch(signInNotifier).phoneController,
              hintText: "lbl_n_t_l_phone".tr,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              },
              borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
              fillColor: appTheme.blueGray50);
        }));
  }

  /// Section Widget
  Widget _buildNationalIdentificationNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 10.h),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref
                  .watch(signInNotifier)
                  .nationalIdentificationNumberController,
              hintText: "msg_numero_d_identification".tr,
              borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
              fillColor: appTheme.blueGray50);
        }));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 10.h),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref.watch(signInNotifier).emailController,
              hintText: "lbl_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
              fillColor: appTheme.blueGray50);
        }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 10.h),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref.watch(signInNotifier).passwordController,
              hintText: "lbl_mot_de_passe".tr,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
              fillColor: appTheme.blueGray50);
        }));
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
        width: 250.h,
        text: "lbl_cr_er_un_compte".tr,
        onPressed: () {
          onTapCreateAccount(context);
        });
  }

  /// Navigates to the getinhStartedScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getinhStartedScreen,
    );
  }
}
