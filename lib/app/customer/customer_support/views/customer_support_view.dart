import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';
import 'package:prasad/app/routes/app_pages.dart';

import '../../../data/app_colors.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/customer_support_controller.dart';

class CustomerSupportView extends GetView<CustomerSupportController> {
  const CustomerSupportView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonCard(
                onTap: () => Get.back(),
                color: AppColors.primaryColor,
                icon: Icons.arrow_back,
                iconColor: Colors.white,
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.center,
                child: Image.asset(ImagePath.support),
              ),
              SizedBox(height: 30.h,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Hello, How can we\nHelp you?",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bold24,
                ),
              ),
              SizedBox(height: 30.h,),
              buildListTile(
                title: "Live chat",
                imagePath: ImagePath.liveChat,
                onTap: () {
                  Get.offNamed('/customer-chat-room');
                },
              ),
              SizedBox(height: 15.h,),
              buildListTile(
                title: "Sent us an E-mail",
                imagePath: ImagePath.liveChat,
                onTap: () {},
              ),
              SizedBox(height: 15.h,),
              buildListTile(
                title: "Call Support",
                imagePath: ImagePath.liveCall,
                onTap: () {
                  Get.toNamed(Routes.CUSTOMER_SUPPORT_TICKET);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListTile({
    required String title,
    required String imagePath,
    VoidCallback? onTap,
  }) {
    return ListTile(
      onTap: onTap,
      tileColor: AppColors.listBgColor,
      leading: Image.asset(imagePath, height: 30.h , width: 22.w,),
      title: Text(
        title,
        style: AppTextStyles.bold15
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.black,
        size: 18,
      ),
    );
  }
}
