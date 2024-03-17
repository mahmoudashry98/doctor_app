// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_app/core/theme/app_color.dart';
import 'package:doctor_app/core/theme/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  const AppTextFormField({
    Key? key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        border: InputBorder.none,
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: AppColor.mainBlue,
                width: 1.3,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(
                color: AppColor.lighterGray,
                width: 1.3,
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(
            color: AppColor.lighterGray,
            width: 1.3,
          ),
        ),
        hintText: hintText,
        hintStyle: hintStyle ?? Styles.font14LightGrayRegular,
        suffixIcon: suffixIcon,
        disabledBorder: InputBorder.none,
        filled: true,
        fillColor: backgroundColor ?? AppColor.lightestGray,
      ),
      obscureText: isObscureText ?? false,
      style: Styles.font14DarkBlueMedium,
    );
  }
}
