import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/app_text_styles.dart';

class CustomTextFieldLogin extends StatelessWidget {
  final String name;
  final String hintText;

  const CustomTextFieldLogin({
    super.key,
    required this.name,
    required this.hintText,
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
        TextFormField(decoration: InputDecoration(hintText: hintText)),
      ],
    );
  }
}