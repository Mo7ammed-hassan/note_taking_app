import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/core/utils/widgets/custom_buttom.dart';
import 'package:note_taking_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:note_taking_app/features/auth/persentation/manager/cubit/auth_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --custom textfield--
          CustomTextFormField(
            controller: emailController,
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            controller: passwordController,
            labelText: 'Password',
            isObscureText: true,
            keyboardType: TextInputType.visiblePassword,
          ),
          // Text
          const SizedBox(height: 18),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Forgot password?',
              style: AppTextStyles.textStyle16SemiBold
                  .copyWith(color: AppColors.primaryColor.withOpacity(0.9)),
            ),
          ),
          const Spacer(),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'By continuing, you agree to our ',
                  style: AppTextStyles.textStyle12Medium,
                ),
                TextSpan(
                  text: 'Terms of Service ',
                  style: AppTextStyles.textStyle12Bold,
                ),
                TextSpan(
                  text: 'and ',
                  style: AppTextStyles.textStyle12Medium,
                ),
                TextSpan(
                  text: 'Privacy\nPolicy.',
                  style: AppTextStyles.textStyle12Bold,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: CustomButtom(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  // Trigger cubit signIn
                  BlocProvider.of<AuthCubit>(context).signIn(
                    emailController.text,
                    passwordController.text,
                  );
                }
              },
              title: 'Log in',
            ),
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
