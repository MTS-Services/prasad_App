import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/app_text_styles.dart';

class CustomTextFieldLogin extends StatelessWidget {
  final String name;
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextFieldLogin({
    super.key,
    required this.name,
    required this.hintText, this.controller, this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentGeometry.centerLeft,
          child: Text(name, style: AppTextStyles.medium16),
        ),
        SizedBox(height: 6.h),
        TextFormField(
          validator: validator,
            controller: controller,
            decoration: InputDecoration(hintText: hintText)),
      ],
    );
  }
}