// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theme/app_color.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasMinimumLength;
  final bool hasMinLength;
  const PasswordValidations({
    Key? key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacters,
    required this.hasMinimumLength,
    required this.hasMinLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowerCase letter', hasLowerCase),
        appHSpace(4),
        buildValidationRow('At least 1 upperCase letter', hasUpperCase),
        appHSpace(4),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacters),
        appHSpace(4),
        buildValidationRow('At least 1 number', hasNumber),
        appHSpace(4),
        buildValidationRow('At least 8 characters in length', hasMinLength),
        appHSpace(4),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 5.r,
          backgroundColor:
              hasValidated ? AppColor.mainBlue : AppColor.lighterGray,
        ),
        appVSpace(6),
        Text(
          text,
          style: Styles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.red,
            decorationThickness: 2,
            color: hasValidated
                ? AppColor.black.withOpacity(0.5)
                : AppColor.darkBlue,
          ),
        ),
      ],
    );
  }
}
