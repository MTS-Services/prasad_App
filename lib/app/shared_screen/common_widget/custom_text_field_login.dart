import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/app_text_styles.dart';

class CustomTextFieldLogin extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextFieldLogin({
    super.key,
    required this.labelText,
    required this.hintText,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h),
          child: TextFormField(
            validator: validator,
            controller: controller,
            decoration: InputDecoration(hintText: hintText,
                labelText: labelText,
            labelStyle: AppTextStyles.medium16,
                floatingLabelStyle: AppTextStyles.medium20),
          ),
        ),
      ],
    );
  }
}
