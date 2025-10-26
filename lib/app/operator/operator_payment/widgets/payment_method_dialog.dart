import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';
import 'package:prasad/app/operator/operator_payment/controllers/operator_payment_controller.dart';

class PaymentMethodDialog extends StatelessWidget {
  final VoidCallback? onPlaceOrder;

  const PaymentMethodDialog({super.key, this.onPlaceOrder});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OperatorPaymentController>();
    
    return AlertDialog(
      backgroundColor: Color(0xffF7FFE5),
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      contentPadding: EdgeInsets.all(16.r),
      content: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Account Type', style: AppTextStyles.bold22),
            const SizedBox(height: 16),

            // Payment Method Buttons
            Obx(
              () => Row(
                children: [
                  Expanded(
                    child: _buildMethodButton(
                      controller: controller,
                      image: ImagePath.cardPng,
                      label: "Card",
                      index: 0,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: _buildMethodButton(
                      controller: controller,
                      image: ImagePath.googlePay,
                      index: 1,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: _buildMethodButton(
                      controller: controller,
                      image: ImagePath.payPng,
                      index: 2,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: _buildMethodButton(
                      controller: controller,
                      image: ImagePath.stripePng,
                      index: 3,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Card Details Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.credit_card, color: Colors.orange),
                      SizedBox(width: 8),
                      Text(
                        'Add Credit / Debit Card',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  _buildTextField('5143 **** **** 9856'),
                  const SizedBox(height: 12),
                  _buildTextField('(307) 555-0133'),
                  const SizedBox(height: 16),

                  const Text(
                    'Expire Date',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),

                  Row(
                    children: [
                      Expanded(child: _buildTextField('06')),
                      const SizedBox(width: 12),
                      Expanded(child: _buildTextField('2028')),
                    ],
                  ),
                  const SizedBox(height: 12),

                  _buildTextField('125', suffixIcon: Icons.info_outline),
                ],
              ),
            ),

            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPlaceOrder,
                child: Text('Continue', style: AppTextStyles.medium12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Payment Method Button Widget
  Widget _buildMethodButton({
    required OperatorPaymentController controller,
    required String image,
    String? label,
    required int index,
  }) {
    bool selected = controller.payIndex.value == index;
    
    return InkWell(
      onTap: () {
        controller.payIndex.value = index;
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? AppColors.primaryColor : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: selected ? Colors.green : Colors.grey.shade300,
            width: 1.2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image, height: 20.h),
            if (label != null) ...[
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  color: selected ? Colors.white : Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  /// Custom TextField Widget
  Widget _buildTextField(String hint, {IconData? suffixIcon}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        suffixIcon: suffixIcon != null ? Icon(suffixIcon, size: 18) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}