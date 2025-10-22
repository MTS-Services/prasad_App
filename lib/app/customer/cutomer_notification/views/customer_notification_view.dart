import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../controllers/cutomer_notification_controller.dart';
import '../widget/back_button_card.dart';
import '../widget/notification_card.dart';

class CustomerNotificationView extends GetView<CutomerNotificationController> {
  const CustomerNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Back Button
                BackButtonCard(
                  onTap: () => Get.back(),
                  color: AppColors.primaryColor,
                  icon: Icons.arrow_back,
                  iconColor: Colors.white,
                ),

                SizedBox(height: 15.h),

                Text(
                  "Notifications",
                  style: AppTextStyles.bold20.copyWith(
                    fontSize: 20.sp,
                    color: Colors.black87,
                  ),
                ),

                SizedBox(height: 10.h),


                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return NotificationCard(
                      icon: Icons.notifications_active_outlined,
                      iconColor: Colors.blue,
                      title: 'Order Service Confirmed',
                      message:
                      'Your job request #1234 has been successfully confirmed.',
                      timeAgo: '9 min ago',
                      isUnread: index % 2 == 0, // alternate read/unread
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
