import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../../shared_screen/common_widget/custom_appbar.dart';
import '../controllers/operator_service_decline_confirm_controller.dart';

class OperatorServiceDeclineConfirmView
    extends GetView<OperatorServiceDeclineConfirmController> {
  const OperatorServiceDeclineConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Please Note",
                style: AppTextStyles.bold32.apply(color: AppColors.redColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: RichText(
                textAlign: TextAlign.center, // <-- Add this line
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "We are sorry, but the service time has already passed ",
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                    TextSpan(
                      text: "48 hours.",
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.redColor,
                      ),
                    ),
                    TextSpan(
                      text:
                          "For this reason, we are unable to accept your cancellation request.",
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      Get.offAllNamed(Routes.OPERATOR_BOTTOM_NAVI_BAR),
                  child: Text("Go Home"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
