import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(key: key);

  final Alignment? alignment;
  final BuildContext context;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Function(String) onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: pinCodeTextFieldWidget,
    )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
    appContext: context,
    controller: controller,
    length: 6, // Change the length to 6
    keyboardType: TextInputType.number,
    textStyle: textStyle,
    hintStyle: hintStyle,
    inputFormatters: [
      FilteringTextInputFormatter.digitsOnly,
    ],
    enableActiveFill: true,
    pinTheme: PinTheme(
      fieldHeight: 42.h,
      fieldWidth: 42.h,
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(12.h),
      inactiveColor: theme.colorScheme.secondaryContainer,
      activeColor: theme.colorScheme.secondaryContainer,
      inactiveFillColor: appTheme.whiteA700,
      activeFillColor: appTheme.whiteA700,
      selectedColor: Colors.transparent,
    ),
    onChanged: (value) => onChanged(value),
    validator: validator,
  );
}
