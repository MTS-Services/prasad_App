import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';

class DroneStatusContainer extends StatelessWidget {
  const DroneStatusContainer({
    super.key,
    required this.number,
    required this.title,
  });
  final String number, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        children: [
          Text(number, style: AppTextStyles.bold24),
          Text(title, style: AppTextStyles.regular10),
        ],
      ),
    );
  }
}
