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
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return AlertDialog(
      backgroundColor: AppColors.whiteColor,
      insetPadding: const EdgeInsets.symmetric(
        vertical: 25,
      ),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Account Type',style: AppTextStyles.bold24,),
            SizedBox(height: 8.h,),
            Container(
              width: isMobile ? double.infinity : 400,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Payment Method Buttons
                  _buildMethodButton(
                    image: ImagePath.cardPng,
                    label: "Bank",
                    selected: true,
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
                            Flexible(
                              child: Text(
                                'Add Account',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h,),
                        Row(
                          children: [
                            SizedBox(height: 16),
                            Expanded(child: _buildTextField('First Name')),
                            SizedBox(width: 8.w,),
                            Expanded(child: _buildTextField('Last Name')),
                          ],
                        ),
                        const SizedBox(height: 12),
                        _buildTextField('Routing Number'),
                        const SizedBox(height: 16),
                        _buildTextField('Account number'),
                        const SizedBox(height: 16),
                        _buildTextField('Verify Account Number'),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMethodButton({
    required String image,
    String? label,
    required bool selected,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: selected ? AppColors.primaryColor : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: selected ? Colors.green : Colors.grey.shade300,
          width: 1.w,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image, height: 28.h),
          if (label != null) ...[
            SizedBox(width: 2.w),
            Flexible(
              child: Text(
                label,
                style: TextStyle(
                  color: selected ? Colors.white : Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 10.sp,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
            ),
          ],
        ],
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
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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