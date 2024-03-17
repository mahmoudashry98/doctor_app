import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: Styles.font13GrayRegular,
          ),
          TextSpan(
              text: 'Terms and Conditions', style: Styles.font13DarkBlueMedium),
          TextSpan(
            text: ' and ',
            style: Styles.font13GrayRegular.copyWith(height: 1.30),
          ),
          TextSpan(text: 'Privacy Policy', style: Styles.font13DarkBlueMedium),
        ],
      ),
    );
  }
}
