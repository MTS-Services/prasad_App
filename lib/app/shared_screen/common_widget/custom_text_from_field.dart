import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prasad/app/data/app_colors.dart';

import '../../data/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool? requiredText;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.controller,
    this.validator,
    this.onTap,
    this.suffixIcon,
    this.obscureText = false,
    this.requiredText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: TextFormField(
        validator: validator,
        controller: controller,
        onTap: onTap,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          label: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: labelText,
                  style: AppTextStyles.medium16.copyWith(color: Colors.black),
                ),
                if (requiredText!)
                  TextSpan(
                    text: ' *',
                    style: AppTextStyles.medium16.copyWith(color: Colors.red),
                  ),
              ],
            ),
          ),
          floatingLabelStyle: AppTextStyles.medium20.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
