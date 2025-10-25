import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../controllers/operator_payment_controller.dart';

class AccountContainer extends StatelessWidget {
  const AccountContainer({
    super.key,
    required this.accountName,
    required this.accountNumber,
    required this.status,
    required this.index, // Add index parameter
    this.onTap,
  });
  final String accountName, accountNumber, status;
  final int index; // Add this
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OperatorPaymentController>();
    return Obx(
      () => Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: ListTile(
          onTap: onTap,
          leading: Container(
            width: 15.h,
            decoration: BoxDecoration(
              color: controller.isSelected(index)
                  ? Colors.redAccent
                  : Colors.grey.shade300,
              shape: BoxShape.circle,
            ),
          ),
          title: Text(accountName, style: AppTextStyles.medium16),
          subtitle: Text(accountNumber, style: AppTextStyles.regular14),
          trailing: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFFfff9e6),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(status, style: AppTextStyles.regular12),
          ),
        ),
      ),
    );
  }
}