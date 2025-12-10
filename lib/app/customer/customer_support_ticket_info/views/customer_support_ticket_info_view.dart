import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';
import 'package:prasad/app/routes/app_pages.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_appbar.dart';

import '../controllers/customer_support_ticket_info_controller.dart';

class CustomerSupportTicketInfoView
    extends GetView<CustomerSupportTicketInfoController> {
  const CustomerSupportTicketInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Ticket Info"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: AppColors.lightGeryColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ticket description", style: AppTextStyles.bold24),
                      SizedBox(height: 8.h,),
                      Text(
                        "Hello there, I am experiencing an issue when logging into my hosting account using the email address example@gmal.com Upon logging in, I receive the following message: 'Functionality is restricted.' Could you please investigate and resolve this issue as soon as possible? Thank you for your support Best regards,",
                        style: AppTextStyles.regular12,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Image.asset(ImagePath.screenshot),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Text("Respond", style: AppTextStyles.medium24),
              ),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(hintText: "Write Your Response"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32.h),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () =>
                        Get.toNamed(Routes.CUSTOMER_SUPPORT_TICKET_TOKEN),
                    child: Text("Send"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
