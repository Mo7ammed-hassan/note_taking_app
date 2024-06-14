import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/core/utils/functions/build_show_snak_bar.dart';
import 'package:note_taking_app/core/utils/widgets/custom_buttom.dart';
import 'package:note_taking_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:note_taking_app/features/auth/persentation/manager/cubit/auth_cubit.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController configePasswordController =
      TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    configePasswordController.dispose();
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
              controller: userNameController,
              labelText: 'User name',
              keyboardType: TextInputType.name),
          const SizedBox(height: 16),
          CustomTextFormField(
              controller: emailController,
              labelText: 'Email',
              keyboardType: TextInputType.emailAddress),
          const SizedBox(height: 16),
          CustomTextFormField(
            controller: passwordController,
            labelText: 'Password',
            isObscureText: true,
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            controller: configePasswordController,
            labelText: 'Confirm Password',
            isObscureText: true,
            keyboardType: TextInputType.visiblePassword,
          ),

          // Text
          const SizedBox(height: 18),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Forgot password?',
              style: AppTextStyles.textStyle16SemiBold.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(height: 35),
          ),
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
                if (_formKey.currentState!.validate() &&
                    passwordController.text == configePasswordController.text) {
                  BlocProvider.of<AuthCubit>(context).signUp(
                    userNameController.text,
                    emailController.text,
                    passwordController.text,
                  );
                  // sign up Method
                  showSnakBar(context, title: 'Processing Data');
                  Future.delayed(
                    const Duration(milliseconds: 350),
                    () => GoRouter.of(context).push('/home'),
                  );
                }
              },
              title: 'Sign Up',
            ),
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
