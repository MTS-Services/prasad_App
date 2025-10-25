import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';

class ReviewMessage extends StatelessWidget {
  const ReviewMessage({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: AppColors.notificationColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(text, style: AppTextStyles.regular12),
    );
  }
}
