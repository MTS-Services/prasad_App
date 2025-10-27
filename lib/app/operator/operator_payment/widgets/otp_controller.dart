import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:prasad/app/data/app_text_styles.dart';

class OtpTextfield extends StatelessWidget {
  const OtpTextfield({super.key, required this.pinController});
  final TextEditingController pinController;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      controller: pinController,
      defaultPinTheme: PinTheme(
        width: 50.w,
        height: 50.h,
        textStyle: AppTextStyles.medium16,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      // focusedPinTheme: PinTheme(
      //   width: 50.w,
      //   height: 50.h,
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     border: Border.all(
      //       color: AppColors.primaryColor,
      //       width: 2,
      //     ),
      //     borderRadius:
      //         BorderRadius.circular(8.r),
      //     boxShadow: [
      //       BoxShadow(
      //         color: AppColors.primaryColor
      //             .withOpacity(0.1),
      //         blurRadius: 4,
      //         offset: Offset(0, 2),
      //       ),
      //     ],
      //   ),
      // ),
      // submittedPinTheme: PinTheme(
      //   width: 50.w,
      //   height: 50.h,
      //   decoration: BoxDecoration(
      //     color: Colors.green.shade50,
      //     border: Border.all(
      //       color: Colors.green,
      //     ),
      //     borderRadius:
      //         BorderRadius.circular(8.r),
      //   ),
      // ),
      // onCompleted: (pin) {
      //   // Handle OTP verification
      //   print("OTP entered: $pin");
      // },
    );
  }
}
