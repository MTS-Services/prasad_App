
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../data/image_path.dart';

class AccountPaymentInfoAdd extends StatelessWidget {
  final VoidCallback? onPlaceOrder;

  const AccountPaymentInfoAdd({
    super.key,
    this.onPlaceOrder,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Center(
      child: Container(
        width: isMobile ? double.infinity : 400,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Payment method',
              style: AppTextStyles.bold22,
            ),
            const SizedBox(height: 16),

            // Payment Method Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 2.w,
              children: [
                Flexible(
                  flex: 1,
                  child: _buildMethodButton(
                    image: ImagePath.cardPng,
                    label: "Card",
                    selected: true,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: _buildMethodButton(
                    image: ImagePath.googlePay,
                    selected: false,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: _buildMethodButton(
                    image: ImagePath.payPng,
                    selected: false,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: _buildMethodButton(
                    image: ImagePath.stripePng,
                    selected: false,
                  ),
                ),
              ],
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
                          'Add Credit / Debit Card',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
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
          ],
        ),
      ),
    );
  }

  /// Payment Method Button Widget
  Widget _buildMethodButton({
    required String image,
    String? label,
    required bool selected,
  }) {
    return Container(
      padding: EdgeInsets.all(2.sp),
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
