import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/operator/operator_payment/controllers/operator_payment_controller.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import 'accoount_container.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({
    super.key,
    required this.primaryAccountName,
    required this.primaryAccountNumber,
    required this.secondaryAccountName,
    required this.secondaryAccountNumber,
    required this.primaryStatus,
    required this.secondryStatus, this.newPaymentOnPressed,
  });
  final String primaryAccountName,
      primaryAccountNumber,
      secondaryAccountName,
      secondaryAccountNumber,
      primaryStatus,
      secondryStatus;
      final Function()? newPaymentOnPressed;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OperatorPaymentController>();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 24.h),
      decoration: BoxDecoration(
        color: AppColors.notificationColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Row(
            spacing: 20.w,
            children: [
              Text('Account', style: AppTextStyles.regular20),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: newPaymentOnPressed,
                  icon: Icon(Icons.add),
                  label: Text(
                    'Add New Account',
                    style: AppTextStyles.medium16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h,),
          AccountContainer(
            accountName: primaryAccountName,
            accountNumber: primaryAccountNumber,
            status: primaryStatus,
            index: 0,
            onTap: () => controller.selectAccount(0),
          ),
          AccountContainer(
            accountName: secondaryAccountName,
            accountNumber: secondaryAccountNumber,
            status: secondryStatus,
            index: 1,
            onTap: () => controller.selectAccount(1),
          ),
        ],
      ),
    );
  }
}
