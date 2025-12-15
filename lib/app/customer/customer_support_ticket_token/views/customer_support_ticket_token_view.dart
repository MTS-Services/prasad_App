import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/routes/app_pages.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_appbar.dart';

import '../controllers/customer_support_ticket_token_controller.dart';

class CustomerSupportTicketTokenView
    extends GetView<CustomerSupportTicketTokenController> {
  const CustomerSupportTicketTokenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Token Details"),
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: AppColors.lightGeryColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ticket Description", style: AppTextStyles.bold24),
                    _buildRowText("ID: ", "43178"),
                    _buildRowText(
                      "Subject: ",
                      "Ineffective Drone Spraying Quality",
                    ),
                    _buildRowText("Requester type: ", "Customer account"),
                    _buildRowText("Created on:", "Sep 06, 2025 20:44:58"),
                    _buildRowText("Contact: ", "example@gmail.com"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>
                    Get.offAllNamed(Routes.CUSTOMER_BOTTOM_NAVI_BAR),
                child: Text("Go To Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildRowText(String title, String subTitle) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyles.medium20,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        Expanded(
          child: Text(
            subTitle,
            style: AppTextStyles.regular14,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
