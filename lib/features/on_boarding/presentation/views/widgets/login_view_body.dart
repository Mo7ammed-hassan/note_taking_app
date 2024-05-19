import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';
import 'package:note_taking_app/core/utils/widgets/custom_buttom.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --custom textfield--
          const CustomTextFormField(labelText: 'Email'),
          const SizedBox(height: 16),
          const CustomTextFormField(labelText: 'Password'),
          // Text
          const SizedBox(height: 18),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Forgot password?',
              style: AppTextStyles.textStyle16SemiBold,
            ),
          ),
          const Expanded(
            child: SizedBox(height: 35),
          ),

          Text(
            'By continuing, you agree to our Terms of Service and Privacy\nPolicy.',
            style: AppTextStyles.textStyle12Reguilar
                .copyWith(color: AppColors.noteBodyColor),
          ),
          const SizedBox(height: 28),

          SizedBox(
            width: 350,
            child: CustomButtom(onTap: () {}, title: 'Log in'),
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.labelText});
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        filled: true,
        fillColor: Colors.white,
        labelText: labelText,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
