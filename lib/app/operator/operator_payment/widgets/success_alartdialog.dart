import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';

class SuccessAlertDialog extends StatelessWidget {
  const SuccessAlertDialog({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xffECFDF6),
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      title: Column(
        spacing: 10.h,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(ImagePath.sucessIcon, height: 99.h),
          Text('Account Added Successful!', style: AppTextStyles.bold18),
          Text(
            'Your bank account has been linked to your profile. You can now receive payments and manage your transactions seamlessly.',
            style: AppTextStyles.regular11,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed,
              child: Text('Close', style: AppTextStyles.medium12),
            ),
          ),
        ],
      ),
    );
  }
}
