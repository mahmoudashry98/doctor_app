import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor_app/features/login/ui/widgets/terms_and_condition_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: Styles.font24BlueBold,
                ),
                appHSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: Styles.font14GrayRegular,
                ),
                appHSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: 'Email',
                      ),
                      appHSpace(20),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      appHSpace(20),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: Styles.font13BlueRegular,
                        ),
                      ),
                      appHSpace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: Styles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      appHSpace(16),
                      const TermsAndConditionText(),
                      appHSpace(60),
                      const AlreadyHaveAccountText()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
