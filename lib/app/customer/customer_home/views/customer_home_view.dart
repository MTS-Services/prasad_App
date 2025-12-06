import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/image_path.dart';
import 'package:prasad/app/routes/app_pages.dart';

import '../controllers/customer_home_controller.dart';
import '../widget/custom_search_field.dart';
import '../widget/section_header.dart';
import '../widget/service_card.dart';
import '../widget/welcome_header.dart';

class CustomerHomeView extends GetView<CustomerHomeController> {
  const CustomerHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeHeader(
                  userName: "Sarah paul!",
                  subtitle:
                  "Here's what's happening with your services today.",
                  onProfileTap: () => Get.toNamed(Routes.CUSTOMER_PROFILE),
                  profileImageUrl: ImagePath.farmerPng,
                  onNotificationTap: () {
                    Get.toNamed('/customer-notification');
                  },
                ),
                SizedBox(height: 15.h),
                CustomSearchField(
                  controller: controller.searchController,
                  onChanged: (value) {
                    print("Searching: $value");
                  },
                ),
                SizedBox(height: 15.h),
                SectionHeader(
                  title: 'Services',
                  onTap: () {
                    Get.toNamed('/customer-all-services');
                  },
                ),
                SizedBox(height: 10.h),
                ListView.builder(
                  itemCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: ServiceCard(
                        imageUrl: ImagePath.servicePng,
                        title: 'Agro Drone Service',
                        description:
                        'Precision crop monitoring and field insights powered by aerial data.',
                        price: '150',
                        priceUnit: 'Acre',
                        buttonText: 'Book A Service',
                        onPressed: () {
                          Get.toNamed(Routes.CUSTOMER_SERVICE_DETAILS);
                        },
                      ),
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
