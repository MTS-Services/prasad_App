import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';

class FileContainer extends StatelessWidget {
  const FileContainer({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Text(text, style: AppTextStyles.regular12,overflow: TextOverflow.ellipsis,maxLines: 1,),
    );
  }
}
