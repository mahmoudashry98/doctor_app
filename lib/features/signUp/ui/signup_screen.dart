import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/features/login/ui/widgets/terms_and_condition_text.dart';
import 'package:doctor_app/features/signUp/ui/widgets/already_have_account.dart';
import 'package:doctor_app/features/signUp/ui/widgets/sign_up_bloc_listenter.dart';
import 'package:doctor_app/features/signUp/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/app_text_button.dart';
import '../logic/sign_up_cubit.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: Styles.font24BlueBold,
                ),
                appHSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: Styles.font14GrayRegular,
                ),
                appHSpace(8),
                Column(
                  children: [
                    const SignUpForm(),
                    appHSpace(10),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: Styles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignUp(context);
                      },
                    ),
                    appHSpace(15),
                    const TermsAndConditionsText(),
                    appHSpace(10),
                    const AlreadyHaveAccountText(),
                    const SignUpBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}
