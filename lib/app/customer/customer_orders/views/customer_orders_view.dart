import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';
import 'package:prasad/app/routes/app_pages.dart';

import '../../../data/app_colors.dart';
import '../../customer_home/widget/service_card.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/customer_orders_controller.dart';
import '../widget/orders_card.dart';

class CustomerOrdersView extends GetView<CustomerOrdersController> {
  const CustomerOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // BackButtonCard(
                //   onTap: () => Get.back(),
                //   color: AppColors.primaryColor,
                //   icon: Icons.arrow_back,
                //   iconColor: Colors.white,
                // ),
                SizedBox(height: 5.h),
                Text("My Bookings",style: AppTextStyles.bold20,),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return OrderCard(
                      serviceName: "Crop Spraying",
                      status: "In Progress",
                      date: "Mon, Sep 10",
                      time: "12:00 AM - 3:00 PM",
                      onTrackNow: () {
                        Get.toNamed("/customer-service-traking");
                      },
                      onCancel: () {
                        Get.toNamed("/customer-service-cancel-request");
                      },
                    );
                  },
                ),
                SizedBox(height: 12.h,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Get.toNamed(Routes.CUSTOMER_SERVICE_DETAILS);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Book A Service",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
