import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../data/image_path.dart';
import '../controllers/operator_payment_controller.dart';
import 'otp_controller.dart';

class OtpAlertDialog extends StatelessWidget {
  const OtpAlertDialog({
    super.key,
    required this.controller,
    this.resendOnTap,
    this.onPressed,
  });

  final OperatorPaymentController controller;
  final Function()? resendOnTap, onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xffECFDF6),
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      title: Column(
        children: [
          Image.asset(ImagePath.otpIcon, height: 59.h),
          Text('Verify Your Account', style: AppTextStyles.bold17),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'We’ve sent a 6-digit verification code to your mobile number +61 412 345 678. Enter the code below to complete your registration:',
            style: AppTextStyles.regular11,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          OtpTextfield(pinController: controller.pinController),
          SizedBox(height: 10.h),
          Text('Didn’t receive the code?', style: AppTextStyles.regular12),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Resend Code',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    decoration: TextDecoration.underline,
                    fontSize: 14, // Adjust font size as needed
                  ),
                  recognizer: TapGestureRecognizer()..onTap = resendOnTap,
                ),
                TextSpan(
                  text: ' (Wait 60 seconds to resend)',
                  style: AppTextStyles.regular12.apply(
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed,
              child: Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }
}
