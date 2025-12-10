import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../../shared_screen/common_widget/custom_appbar.dart';
import '../controllers/operator_service_decline_request_controller.dart';

class OperatorServiceDeclineRequestView
    extends GetView<OperatorServiceDeclineRequestController> {
  const OperatorServiceDeclineRequestView({super.key});
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
                      "This request will only be accepted if submitted within ",
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
                  ],
                ),
              ),
            ),
            Text("Cancel Reason", style: AppTextStyles.medium16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: AppColors.blackColor),
              ),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: AppTextStyles.regular12,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      Get.toNamed(Routes.OPERATOR_SERVICE_DECLINE_CONFIRM),
                  child: Text("Request For Cancel"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
