import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/functions/build)input_border.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.keyboardType,
    this.isObscureText = false,
  });
  final String labelText;
  final TextInputType? keyboardType;
  final bool isObscureText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Faild is required';
        } else {
          return null;
        }
      },
      obscuringCharacter: '*',
      obscureText: widget.isObscureText ? showPassword : false,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        filled: true,
        fillColor: Colors.white,
        labelText: widget.labelText,
        suffixIconConstraints: const BoxConstraints(maxWidth: 35),
        suffixIcon: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
              child: widget.isObscureText == true
                  ? SvgPicture.asset(
                      Assets.imagesEyeShow,
                      width: 20,
                    )
                  : const SizedBox(),
            ),
            const Expanded(
              child: SizedBox(
                height: 20,
              ),
            )
          ],
        ),
        border: buildInputBorder(),
        enabledBorder: buildInputBorder(),
        focusedBorder: buildInputBorder(),
      ),
    );
  }
}
