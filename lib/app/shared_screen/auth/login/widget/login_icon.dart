import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/app_colors.dart';

class LoginIcon extends StatelessWidget {
  final String image;
  const LoginIcon({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 55,
        height: 48,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: AppColors.lightGeryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Image.asset(image, fit: BoxFit.contain,),
      ),
    );
  }
}