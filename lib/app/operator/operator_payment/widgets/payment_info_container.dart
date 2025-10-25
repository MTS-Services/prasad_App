import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';

class PaymentInfoContainer extends StatelessWidget {
  const PaymentInfoContainer({
    super.key,
    required this.title,
    required this.amount,
    required this.status,
  });
  final String title, amount, status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: AppColors.notificationColor,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.medium14),
          Text(amount, style: AppTextStyles.bold18),
          Row(
            children: [
              Icon(Icons.arrow_upward),
              Text(status, style: AppTextStyles.regular12),
            ],
          ),
        ],
      ),
    );
  }
}
